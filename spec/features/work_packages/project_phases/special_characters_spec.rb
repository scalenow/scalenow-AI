# frozen_string_literal: true

# -- copyright
# OpenProject is an open source project management software.
# Copyright (C) the OpenProject GmbH
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License version 3.
#
# OpenProject is a fork of ChiliProject, which is a fork of Redmine. The copyright follows:
# Copyright (C) 2006-2013 Jean-Philippe Lang
# Copyright (C) 2010-2013 the ChiliProject Team
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
#
# See COPYRIGHT and LICENSE files for more details.
# ++

require "spec_helper"

RSpec.describe "Project phases with special characters", :js do
  shared_let(:color) { create(:color) }
  shared_let(:project) { create(:project) }
  shared_let(:user) do
    create(:user,
           member_with_permissions: { project => %i[view_project_phases view_work_packages edit_work_packages] })
  end

  # Create all phase definitions with various special characters upfront
  shared_let(:phase_priprava) do
    create(:project_phase_definition, name: "Příprava", color:)
  end
  shared_let(:phase_navrh) do
    create(:project_phase_definition, name: "Návrh", color:)
  end
  shared_let(:phase_realisation) do
    create(:project_phase_definition, name: "Réalisation", color:)
  end
  shared_let(:phase_symbols) do
    create(:project_phase_definition, name: "Phase #1", color:)
  end
  shared_let(:phase_ampersand) do
    create(:project_phase_definition, name: "Phase & Design", color:)
  end
  shared_let(:phase_slash) do
    create(:project_phase_definition, name: "Planning/Execution", color:)
  end
  shared_let(:phase_japanese) do
    create(:project_phase_definition, name: "計画", color:)
  end
  shared_let(:phase_cyrillic) do
    create(:project_phase_definition, name: "Планирование", color:)
  end
  shared_let(:phase_mixed) do
    create(:project_phase_definition, name: "Phase 1: Příprava & Design", color:)
  end

  # Create project phases for all definitions
  shared_let(:priprava_phase) { create(:project_phase, project:, definition: phase_priprava, active: true) }
  shared_let(:navrh_phase) { create(:project_phase, project:, definition: phase_navrh, active: true) }
  shared_let(:realisation_phase) { create(:project_phase, project:, definition: phase_realisation, active: true) }
  shared_let(:symbols_phase) { create(:project_phase, project:, definition: phase_symbols, active: true) }
  shared_let(:ampersand_phase) { create(:project_phase, project:, definition: phase_ampersand, active: true) }
  shared_let(:slash_phase) { create(:project_phase, project:, definition: phase_slash, active: true) }
  shared_let(:japanese_phase) { create(:project_phase, project:, definition: phase_japanese, active: true) }
  shared_let(:cyrillic_phase) { create(:project_phase, project:, definition: phase_cyrillic, active: true) }
  shared_let(:mixed_phase) { create(:project_phase, project:, definition: phase_mixed, active: true) }

  shared_let(:work_package) do
    create(:work_package,
           project:,
           project_phase_definition: phase_priprava)
  end

  current_user { user }

  let(:work_package_page) { Pages::FullWorkPackage.new(work_package) }

  # Helper method to verify phase is displayed with correct encoding
  def expect_phase_displayed_correctly(phase_name)
    # Verify the phase name is displayed
    work_package_page.expect_attributes(project_phase: phase_name)

    # Calculate the expected CSS class the same way the backend and frontend do
    normalized_name = I18n.transliterate(phase_name)
    encoded_name = Base64.strict_encode64(normalized_name).tr("=", "_")
    expected_css_class = "__hl_inline_project_phase_definition_#{encoded_name}"

    # Check if the phase icon has the correct CSS class for special character encoding
    # This ensures that special characters in phase names are properly transliterated and encoded
    within(".inline-edit--container.projectPhase") do
      expect(page).to have_css("span.#{expected_css_class}")
    end
  end

  it "displays phases with special characters correctly when switching between them" do
    work_package_page.visit!
    work_package_page.ensure_page_loaded

    # Test phases with diacritics
    expect_phase_displayed_correctly("Příprava")

    work_package_page.set_attributes({ projectPhase: "Návrh" })
    expect_phase_displayed_correctly("Návrh")

    work_package_page.set_attributes({ projectPhase: "Réalisation" })
    expect_phase_displayed_correctly("Réalisation")

    # Test phases with symbols
    work_package_page.set_attributes({ projectPhase: "Phase #1" })
    expect_phase_displayed_correctly("Phase #1")

    work_package_page.set_attributes({ projectPhase: "Phase & Design" })
    expect_phase_displayed_correctly("Phase & Design")

    work_package_page.set_attributes({ projectPhase: "Planning/Execution" })
    expect_phase_displayed_correctly("Planning/Execution")

    # TODO: Generate the phase definition classes with the ID
    # instead of the name.
    # Test phases with non-Latin characters
    # work_package_page.set_attributes({ projectPhase: "計画" })
    # expect_phase_displayed_correctly("計画")

    # work_package_page.set_attributes({ projectPhase: "Планирование" })
    # expect_phase_displayed_correctly("Планирование")

    # Test phase with mixed special characters
    work_package_page.set_attributes({ projectPhase: "Phase 1: Příprava & Design" })
    expect_phase_displayed_correctly("Phase 1: Příprava & Design")
  end
end

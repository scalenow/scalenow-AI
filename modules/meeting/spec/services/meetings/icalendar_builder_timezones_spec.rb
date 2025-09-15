# frozen_string_literal: true

#-- copyright
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
#++

require "spec_helper"

RSpec.describe Meetings::IcalendarBuilder, "TimeZones",
               with_settings: { mail_from: "openproject@example.org", app_title: "OpenProject Testing" } do
  let(:tz_europe_berlin) { ActiveSupport::TimeZone["Europe/Berlin"] }
  let(:tz_utc) { ActiveSupport::TimeZone["Etc/UTC"] }

  let(:project) { create(:project) }
  let(:user) do
    create(:user, preferences: { time_zone: tz_europe_berlin.name },
                  member_with_permissions: { project => [:view_meetings] })
  end

  let(:builder) { described_class.new(user: user, timezone: tz_europe_berlin) }

  context "with a recurring meeting scheduled in UTC" do
    let!(:recurring_meeting) do
      create(:recurring_meeting,
             project: project,
             start_time: tz_utc.local(2025, 1, 16, 8, 0, 0),
             duration: 1.0,
             end_date: tz_utc.local(2026, 1, 16, 0, 0, 0),
             frequency: "weekly",
             end_after: "specific_date",
             uid: "OpenProject--meeting-series-31",
             time_zone: tz_utc.name)
    end

    before do
      builder.add_series_event(recurring_meeting: recurring_meeting)
    end

    it "does something" do
      puts builder.to_ical
    end
  end

  context "with a recurring meeting scheduled in Europe/Berlin" do
  end
end

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

module Users
  module AutoLoginTokens
    class RowComponent < ::OpPrimer::BorderBoxRowComponent
      delegate :current_token, to: :table

      def token
        model
      end

      delegate :data, to: :token, prefix: true

      def current?
        token == current_token
      end

      def is_current # rubocop:disable Naming/PredicateName
        if current?
          helpers.op_icon "icon-yes"
        end
      end

      def device
        token_data[:platform] || I18n.t("users.sessions.unknown_os")
      end

      def browser
        name = token_data[:browser] || "unknown browser"
        version = token_data[:browser_version]
        "#{name} #{version ? "(Version #{version})" : ''}"
      end

      def platform
        token_data[:platform] || "unknown platform"
      end

      def expires_on
        expires = token.expires_on || (token.created_at + Setting.autologin.days)
        helpers.format_date(expires)
      end

      def actions
        action_menu
      end

      private

      def button_links
        [action_menu]
      end

      def action_menu
        render(Primer::Alpha::ActionMenu.new(anchor_align: :end)) do |menu|
          menu.with_show_button(
            icon: "kebab-horizontal",
            "aria-label": t(:label_more),
            scheme: :invisible,

            data: { "test-selector": "more-button" }
          )
          delete_action(menu)
        end
      end

      def delete_action(menu)
        return if current?

        menu.with_item(
          label: I18n.t(:button_delete),
          scheme: :danger,
          href: url_for({ controller: "/my/auto_login_tokens", action: "destroy", id: token.id }),
          tag: :button,
          form_arguments: { method: :delete },
          content_arguments: {
            data: {
              confirm: I18n.t(:text_are_you_sure),
              disable_with: I18n.t(:label_loading)
            }
          }
        ) do |item|
          item.with_leading_visual_icon(icon: :trash)
        end
      end
    end
  end
end

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

module OpenProject
  module Static
    module Links
      class << self
        def help_link_overridden?
          OpenProject::Configuration.force_help_link.present?
        end

        def help_link
          OpenProject::Configuration.force_help_link.presence || static_links[:user_guides]
        end

        delegate :[], to: :links

        def links
          @links ||= static_links.merge(dynamic_links)
        end

        def url_for(item)
          links.dig(item, :href)
        end

        def has?(name)
          @links.key? name
        end

        private

        def dynamic_links
          dynamic = {
            help: {
              href: "#",
              label: "top_menu.help_and_support"
            }
          }

          if impressum_link = OpenProject::Configuration.impressum_link
            dynamic[:impressum] = {
              href: "#",
              label: "homescreen.links.impressum"
            }
          end

          dynamic
        end

        def static_links
          {
            upsale: {
              href: "#",
              label: "homescreen.links.upgrade_enterprise_edition"
            },
            upsale_benefits_features: {
              href: "#",
              label: "noscript_learn_more"
            },
            upsale_benefits_installation: {
              href: "#",
              label: "noscript_learn_more"
            },
            upsale_benefits_security: {
              href: "#",
              label: "noscript_learn_more"
            },
            upsale_benefits_support: {
              href: "#",
              label: "noscript_learn_more"
            },
            upsale_get_quote: {
              href: "#",
              label: "admin.enterprise.get_quote"
            },
            user_guides: {
              href: "https://scalenowai.com/user-guide-2/",
              label: "homescreen.links.user_guides"
            },
            installation_guides: {
              href: "#",
              label: :label_installation_guides
            },
            packager_installation: {
              href: "#",
              label: "Packaged installation"
            },
            docker_installation: {
              href: "#",
              label: "Docker installation"
            },
            manual_installation: {
              href: "#",
              label: "Manual installation"
            },
            upgrade_guides: {
              href: "#",
              label: :label_upgrade_guides
            },
            postgres_migration: {
              href: "#",
              label: :"homescreen.links.postgres_migration"
            },
            postgres_13_upgrade: {
              href: "#"
            },
            configuration_guide: {
              href: "#",
              label: "links.configuration_guide"
            },
            contact: {
              href: "#",
              label: "links.get_in_touch"
            },
            glossary: {
              href: "#",
              label: "homescreen.links.glossary"
            },
            shortcuts: {
              href: "#",
              label: "homescreen.links.shortcuts"
            },
            forums: {
              href: "#",
              label: "homescreen.links.forums"
            },
            enterprise_support_as_community: {
              href: "#",
              label: :label_enterprise_support
            },
            enterprise_support: {
              href: "#",
              label: :label_enterprise_support
            },
            website: {
              href: "https://www.scalenowai.com",
              label: "label_openproject_website"
            },
            newsletter: {
              href: "#",
              label: "homescreen.links.newsletter"
            },
            blog: {
              href: "#",
              label: "homescreen.links.blog"
            },
            blog_article_progress_changes: {
              href: "#",
              label: "Significant changes to progress and work estimates"
            },
            release_notes: {
              href: "#",
              label: :label_release_notes
            },
            release_notes_14_0_1: {
              href: "#",
              label: "Release notes for OpenProject 14.0.1"
            },
            data_privacy: {
              href: "https://scalenowai.com/australian-privacy-principles-apps/",
              label: :label_privacy_policy
            },
            digital_accessibility: {
              href: "#",
              label: :label_digital_accessibility
            },
            report_bug: {
              href: "#",
              label: :label_report_bug
            },
            roadmap: {
              href: "#",
              label: :label_development_roadmap
            },
            crowdin: {
              href: "#",
              label: :label_add_edit_translations
            },
            api_docs: {
              href: "#",
              label: :label_api_doc
            },
            text_formatting: {
              href: "#",
              label: :setting_text_formatting
            },
            oauth_authorization_code_flow: {
              href: "#",
              label: "oauth.flows.authorization_code"
            },
            client_credentials_code_flow: {
              href: "#",
              label: "oauth.flows.client_credentials"
            },
            ldap_encryption_documentation: {
              href: "#"
            },
            origin_mdn_documentation: {
              href: "#"
            },
            security_badge_documentation: {
              href: "#"
            },
            date_format_settings_documentation: {
              href: "#"
            },
            chargebee: {
              href: "#"
            },
            webinar_videos: {
              href: "#"
            },
            get_started_videos: {
              href: "#"
            },
            openproject_docs: {
              href: "#"
            },
            contact_us: {
              href: "#"
            },
            pricing: {
              href: "#"
            },
            progress_tracking_docs: {
              href: "#"
            },
            enterprise_docs: {
              form_configuration: {
                href: "#"
              },
              attribute_highlighting: {
                href: "#"
              },
              boards: {
                href: "#"
              },
              custom_field_projects: {
                href: "#"
              },
              custom_field_multiselect: {
                href: "#"
              },
              status_read_only: {
                href: "#"
              }
            },
            sysadmin_docs: {
              saml: {
                href: "#"
              },
              oidc: {
                href: "#"
              },
              oidc_claims: {
                href: "#"
              },
              oidc_acr_values: {
                href: "#"
              }
            },
            storage_docs: {
              setup: {
                href: "#"
              },
              nextcloud_setup: {
                href: "#"
              },
              one_drive_setup: {
                href: "#"
              },
              one_drive_drive_id_guide: {
                href: "#"
              },
              nextcloud_oauth_application: {
                href: "#"
              },
              one_drive_oauth_application: {
                href: "#"
              },
              troubleshooting: {
                href: "#"
              }
            },
            ical_docs: {
              href: "#"
            },
            integrations: {
              href: "#"
            }
          }
        end
      end
    end
  end
end

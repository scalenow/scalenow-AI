class AiController < ApplicationController
  layout "global"
  before_action :require_login
  before_action :verify_tool_access, only: :show
  no_authorization_required! :show

  def show
    name = params[:tool_name]

    @tool_name = ALL_TOOLS[name]&.dig(:display_name) || ""
    @tool_link = ALL_TOOLS[name]&.dig(:url) || root_path
  end

  private

  def verify_tool_access
    tool_name = params[:tool_name]
    return if PLATFORM_TOOLS.key?(tool_name)

    accessible_tools(tool_name)
  end
end

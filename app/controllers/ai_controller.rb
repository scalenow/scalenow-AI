class AiController < ApplicationController
  layout "global"
  before_action :require_login
  no_authorization_required! :index

  def index; end
end

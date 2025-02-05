class AiController < ApplicationController
  layout "global"
  before_action :require_login
  no_authorization_required! :openinterpreter, :openwebui, :nlp, :excalidraw

  def openinterpreter
    accessible_tools('openinterpreter')
  end

  def openwebui
    accessible_tools('openwebui')
  end

  def nlp
    accessible_tools('nlp')
  end

  def excalidraw
    accessible_tools('excalidraw')
  end
end

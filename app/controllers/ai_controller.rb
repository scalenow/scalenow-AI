class AiController < ApplicationController
  layout "global"
  before_action :require_login
  no_authorization_required! :openinterpreter, :document_analysis, :nlp, :excalidraw

  def openinterpreter
    accessible_tools('openinterpreter')
  end

  def document_analysis
    accessible_tools('document_analysis')
  end

  def nlp
    accessible_tools('nlp')
  end

  def excalidraw
    accessible_tools('excalidraw')
  end
end

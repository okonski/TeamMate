require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html
  theme "simple"
  layout proc{ |c| c.request.xhr? ? false : "application" }

  protect_from_forgery
end

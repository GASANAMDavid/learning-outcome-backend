# frozen_string_literal: true

class ApplicationController < ActionController::API
  NotAuthorized = Class.new(StandardError)
  
  include Response
  include ExceptionHandler
end

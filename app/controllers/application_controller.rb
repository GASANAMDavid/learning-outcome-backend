# frozen_string_literal: true

class ApplicationController < ActionController::API
  include Response
  include ExceptionHandler

  def current_user
    @current_user ||= User.last
  end
end

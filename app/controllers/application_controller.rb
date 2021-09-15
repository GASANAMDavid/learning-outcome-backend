# frozen_string_literal: true

class ApplicationController < ActionController::API
  include Response
  include ExceptionHandler

  before_action :set_paper_trail_whodunnit
  def current_user
    @current_user ||= User.last
  end
end

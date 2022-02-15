# frozen_string_literal: true

class SecuredController < ApplicationController
  before_action :authorize_user

  attr_reader :current_user

  private

  def authorize_user
    @current_user = Services::Authorization.authenticate_user!(request.headers)
  rescue JWT::VerificationError, JWT::DecodeError
    json_response({ errors: ['Not Authenticated'] }, :unauthorized)
  end

  def check_is_admin?
    raise NotAuthorizedError unless current_user.admin?
  end
end

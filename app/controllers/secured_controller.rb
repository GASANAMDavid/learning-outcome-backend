class SecuredController < ApplicationController
  before_action :authorize_user
  before_action :check_is_admin?

  attr_reader :current_user

  private

  def authorize_user
    @current_user = Authorization.authenticate_user!(request.headers)
  rescue JWT::VerificationError, JWT::DecodeError
    json_response({ errors: ['Not Authenticated'] }, :unauthorized)
  end

  def check_is_admin?
    raise NotAuthorized, 'Not authorized to perform this action' unless current_user.admin?
  end
end

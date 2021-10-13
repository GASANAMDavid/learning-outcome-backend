class SecuredController < ApplicationController
  before_action :authorize_user

  attr_reader :current_user

  private

  def authorize_user
    @current_user = Authorization.authenticate_user!(request.headers)
  rescue JWT::VerificationError, JWT::DecodeError
    json_response({ errors: ['Not Authenticated'] }, :unauthorized)
  end
end

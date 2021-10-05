class SecuredController < ApplicationController
  before_action :authorize_user

  private

  def authorize_user
    @current_user = Authorization.authenticate_user!(request.headers)
  rescue JWT::VerificationError, JWT::DecodeError => e
    p e
    json_response({ errors: ['Not Authenticated'] }, :unauthorized)
  end
end

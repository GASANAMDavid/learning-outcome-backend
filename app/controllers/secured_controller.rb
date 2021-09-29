class SecuredController < ApplicationController
  before_action :authorize_user

  private

  def authorize_user
    @current_user = Authorization.new(request.headers).authenticate_user!
  rescue JWT::VerificationError, JWT::DecodeError
    render json_response({ errors: ['Not Authenticated'] }, :unauthorized)
  end
end

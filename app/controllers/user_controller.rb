class UserController < ApplicationController
  def create
    User.create!(user_params)
    json_response({}, :ok)
  end

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :role_id)
  end
end

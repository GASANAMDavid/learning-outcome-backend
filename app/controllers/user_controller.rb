class UserController < ApplicationController
  def create
    role = Role.first
    user = User.create!(user_params.merge(role_id: role.id))
    MatrixInitialization.call(user)
    json_response({ message: 'Created Successfully' }, :ok)
  end

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name)
  end
end

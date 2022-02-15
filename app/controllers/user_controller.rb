# frozen_string_literal: true

class UserController < SecuredController
  skip_before_action :authorize_user, only: %i[create]
  before_action :check_is_admin?, only: %i[index destroy]

  def index
    users_list = User.all.map do |user|
      UserDetails.for(user)
    end
    json_response({ users: users_list }, :ok)
  end

  def create
    user = User.create!(user_params)
    InitialMatrixWorker.perform_async(user.id)
    json_response({ message: 'Created Successfully' }, :ok)
  end

  def show
    json_response({ user: UserDetails.for(current_user) })
  end

  def add_user
    Services::CreateAuth0User.create(user_params)
    new_user = User.create!(user_params)
    InitialMatrixWorker.perform_async(new_user.id)
    json_response({ message: 'Created Successfully' })
  end

  def update
    check_is_admin? if current_user.id != params[:id].to_i
    user = User.find(params[:id])
    user.update!(user_params)
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
  end

  private

  def authorize_update
    check_is_admin? if current_user.id != params[:id]
  end

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :role_id)
  end
end

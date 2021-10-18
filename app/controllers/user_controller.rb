class UserController < SecuredController
  skip_before_action :authorize_user, only: %i[create]

  def create
    role = Role.first
    user = User.create!(user_params.merge(role_id: role.id))
    MatrixInitialization.call(user)
    json_response({ message: 'Created Successfully' }, :ok)
  end

  def index
    json_response({ user: {
                    id: current_user.id,
                    first_name: current_user.first_name,
                    last_name: current_user.last_name,
                    email: current_user.email,
                    role: { id: current_user.role_id, admin: current_user.admin? }
                  } })
  end

  def update
    current_user.update!(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name)
  end
end

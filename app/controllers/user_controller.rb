class UserController < SecuredController
  skip_before_action :authorize_user, only: %i[create]
  before_action :check_is_admin?, only: %i[list_users]

  def index
    json_response({ user: UserDetails.for(current_user) })
  end

  def create
    role = Role.first
    user = User.create!(user_params.merge(role_id: role.id))
    MatrixInitialization.call(user)
    json_response({ message: 'Created Successfully' }, :ok)
  end

  def list_users
    users_list = User.all.map do |user|
      UserDetails.for(user)
    end
    json_response({ users: users_list }, :ok)
  end

  def update
    current_user.update!(user_params)
  end

  private

  def check_is_admin?
    current_user.admin?
  end

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name)
  end
end

class RolesController < SecuredController
  skip_before_action :check_is_admin?, only: [:index]
  def index
    roles = []
    Role.all.each do |role|
      roles << { id: role.id, name: role.name }
    end

    json_response({ roles: roles })
  end
end

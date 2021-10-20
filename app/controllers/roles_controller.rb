class RolesController < SecuredController
  def index
    roles = []
    Role.all.each do |role|
      roles << { id: role.id, name: role.name }
    end

    json_response({ roles: roles })
  end
end

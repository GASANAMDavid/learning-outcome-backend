# frozen_string_literal: true

module UserDetails
  def self.for(user)
    {
      id: user.id,
      first_name: user.first_name,
      last_name: user.last_name,
      email: user.email,
      role: {
        id: user.role_id,
        admin: user.admin?,
        name: user.role.name
      }
    }
  end
end

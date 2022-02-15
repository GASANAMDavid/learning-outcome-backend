require 'uri'
require 'net/http'

module Services
  module CreateAuth0User
    def self.create(new_user, access_token = generate_access_token)
      payload = {
        email: new_user['email'],
        email_verified: true,
        user_metadata: {
          first_name: new_user['first_name'],
          last_name: new_user['last_name']
        },
        connection: 'Username-Password-Authentication',
        password: Rails.application.credentials.auth0[:password],
        verify_email: false
      }

      headers = { Authorization: "Bearer #{access_token}",
                  'Content-Type': 'application/json',
                  'Access-Control-Allow-Origin': '*' }

      url = "#{Rails.application.credentials.auth0[:audience]}users"

      p access_token

      RestClient.post(url, payload, headers)
    end

    def self.generate_access_token
      url = "https://#{Rails.application.credentials.auth0[:domain]}/oauth/token"

      payload = { grant_type: 'client_credentials',
                  client_id: Rails.application.credentials.auth0[:client_id],
                  client_secret: Rails.application.credentials.auth0[:client_secret],
                  audience: Rails.application.credentials.auth0[:audience] }

      p 'Hello world ***************************'

      response = RestClient.post(url, payload)

      p 'Hello world ***************************'

      JSON.parse(response)['access_token']
    end
  end
end

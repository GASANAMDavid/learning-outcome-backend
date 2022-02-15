module Services
  module DeleteAuth0User
    def self.destroy(email)
      user_id = JSON.parse(getAuth0UserByEmail(email).body)[0]['user_id']
      url = "https://#{Rails.application.credentials.auth0[:domain]}/api/v2/users/#{user_id}"

      RestClient.delete(url, header) if user_id

    end

    def self.header(access_token = generated_access_token)
      headers = {
        Authorization: "Bearer #{access_token}",
        'Content-Type': 'application/json',
        'Access-Control-Allow-Origin': '*'
      }
    end

    def self.getAuth0UserByEmail(email)
      url = "https://#{Rails.application.credentials.auth0[:domain]}/api/v2/users-by-email?email=#{email}"

      response = RestClient.get(url, header)

      response
    end

    def self.generated_access_token
      url = "https://#{Rails.application.credentials.auth0[:domain]}/oauth/token"
      payload = { grant_type: 'client_credentials', client_id: Rails.application.credentials.auth0[:client_id],
                  client_secret: Rails.application.credentials.auth0[:client_secret],
                  audience: Rails.application.credentials.auth0[:audience] }

      response = RestClient.post(url, payload)

      JSON.parse(response)['access_token']
    end
  end
end

# frozen_string_literal: true

require 'net/http'
require 'uri'

class JsonWebToken
  def self.verify(token)
    JWT.decode(token, nil,
               true, # Verify the signature of this token
               algorithm: 'RS256',
               iss: "https://#{Rails.application.credentials.auth0[:domain]}",
               verify_iss: false,
               aud: Rails.application.credentials.auth0[:api_identifier],
               verify_aud: true) do |header|
      jwks_hash[header['kid']]
    end
  end

  def self.jwks_hash
    jwks_keys = Rails.application.credentials.jwks
    jwks_keys
      .to_h do |k|
      [
        k[:kid],
        OpenSSL::X509::Certificate.new(
          Base64.decode64(k[:x5c])
        ).public_key
      ]
    end
  end
end

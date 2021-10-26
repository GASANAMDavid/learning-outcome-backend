# frozen_string_literal: true

class Authorization
  AUTHORIZATION_HEADER = 'Authorization'
  CLAIM_NAMESPACE = 'http://localhost:3000/'

  def self.authenticate_user!(headers = {}, json_web_token = JsonWebToken)
    User.find_by!(email: extract_user_email(headers, json_web_token))
  end

  def self.extract_user_id(headers, json_web_token)
    token(headers, json_web_token).dig(0, 'sub')
  end

  def self.extract_user_email(headers, json_web_token)
    token(headers, json_web_token).dig(0, "#{CLAIM_NAMESPACE}email")
  end

  def self.token(headers, json_web_token)
    return unless headers[AUTHORIZATION_HEADER]

    token = headers[AUTHORIZATION_HEADER].split.last
    json_web_token.verify(token)
  end
end

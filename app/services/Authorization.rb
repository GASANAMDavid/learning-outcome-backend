class Authorization
  AUTHORIZATION_HEADER = 'Authorization'.freeze

  def initialize(headers = {}, json_web_token = JsonWebToken)
    @headers = headers
    @json_web_token = json_web_token
  end

  def authenticate_user!
    User.find_by!(email: extract_user_email)
  end

  def extract_user_id
    token.dig(0, 'sub')
  end

  private

  def extract_user_email
    token.dig(0, 'email')
  end

  def token
    return unless @headers[AUTHORIZATION_HEADER]

    token = @headers[AUTHORIZATION_HEADER].split(' ').last
    @json_web_token.verify(token)
  end
end

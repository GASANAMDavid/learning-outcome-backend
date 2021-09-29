require 'rails_helper'

RSpec.describe Authorization do
  let(:token) { 'abcd123' }
  let(:headers) { { 'Authorization' => "Bearer #{token}" } }
  let(:user) { create(:user) }
  let(:json_web_token) do
    class_double(JsonWebToken,
                 verify: [{
                   'iss' => 'https://manzi.us.auth0.com/',
                   'sub' => 'auth0|USER-ID',
                   'email' => user.email,
                   'aud' => '9sTH4XsTyzsGUwD7AOVZ5smj9VaIMcSD',
                   'exp' => 1_490_922_820,
                   'iat' => 1_490_886_820,
                   'nonce' => 'crypto-value',
                   'at_hash' => 'IoS3ZGppJKUn3Bta_LgE2A',
                   'scope' => 'openid profile email'
                 }])
  end
  it 'extracts token from authorization header' do
    described_class.new(headers, json_web_token).authenticate_user!

    expect(json_web_token).to have_received(:verify).with(token)
  end

  it 'finds current user by email from parsed token' do
    authenticated_user = described_class.new(headers, json_web_token).authenticate_user!

    expect(authenticated_user).to eq(user)
  end
end

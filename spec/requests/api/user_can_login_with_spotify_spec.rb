# frozen_string_literal: true

RSpec.describe 'GET auth/auth/spotify/callback', type: :request do

  describe 'with valid omniauth credentials' do

    before do
      OmniAuth.config.test_mode = true
      OmniAuth.config.mock_auth[:spotify] = OmniAuth::AuthHash.new(OmniAuthFixtures.spotify_response)
      get '/auth/auth/spotify/callback',
        
    end
    it 'is expected to expect to set a session variable to the Oauth auth hash' do

    end
  end
end
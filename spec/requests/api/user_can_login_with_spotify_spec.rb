# frozen_string_literal: true


RSpec.describe 'GET /auth/spotify', type: :request do

  describe '' do

    before do
      OmniAuth.config.test_mode = true
      OmniAuth.config.mock_auth[:spotify] = OmniAuth::AuthHash.new(OmniAuthFixtures.spotify_response)
      get '/auth/spotify/callback',
        
    end
    it 'is expected to...' do

    end
  end
end
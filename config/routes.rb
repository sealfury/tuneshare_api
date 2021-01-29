Rails.application.routes.draw do
  devise_for :users,
  path: 'auth',
  controllers: { omniauth_callbacks: 'api/omniauth_callbacks' }

  namespace :api do
    resources :posts, only: [:index, :create]
    resources :tracks, only: [:index]
    get 'auth/auth/spotify/callback' => 'api/omniauth_callbacks#spotify'
  end
end

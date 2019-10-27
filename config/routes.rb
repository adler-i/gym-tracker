Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => 'omniauth_callbacks' }

  root 'site#index'

  namespace :api do
    namespace :v1 do
      resources :exercises
    end
  end
end

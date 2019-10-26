Rails.application.routes.draw do
  resources :exercises
  devise_for :users, :controllers => { :omniauth_callbacks => 'omniauth_callbacks' }

  root 'exercises#index'
end

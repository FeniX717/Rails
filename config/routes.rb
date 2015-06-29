Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  namespace :api, defaults: {format: :json} do
    scope :v1 do
      mount_devise_token_auth_for 'User', at: 'auth', skip: [:omniauth_callbacks]
    end
  end
  

  root 'persons#index'
  get 'persons/profile', as: 'user_root'
  get 'index', to: 'persons#index', as: 'next_page'
end




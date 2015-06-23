Rails.application.routes.draw do
  devise_for :users
  root 'persons#index'
  get 'persons/profile', as: 'user_root'
  
end

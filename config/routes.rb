Rails.application.routes.draw do
  devise_for :users
  root 'persons#index'
  get 'persons/profile', as: 'user_root'
  get 'index', to: 'persons#index', as: 'next_page'
  
end

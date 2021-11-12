Rails.application.routes.draw do
  resources :phrases
  resources :boards
  get 'static_pages/index'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks'}
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'static_pages#index'
end

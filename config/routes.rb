Rails.application.routes.draw do
  get 'static_pages/index'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  devise_scope :user do
    delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'static_pages#index'
end

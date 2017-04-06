Rails.application.routes.draw do
  resources :ratings
  resources :requests
  devise_for :users
  root to: "static_pages#home"
  get 'static_pages/home'
  get 'static_pages/about'
  get 'static_pages/liability'
  get 'static_pages/contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_scope :user do
    get 'sign_in', to: 'users/sessions#new'
    get 'sign_up', to: 'users/registrations#new'
    get 'edit_user_registration', to: 'users/registrations#edit'
  end

  resources :requests
  resources :ratings
end

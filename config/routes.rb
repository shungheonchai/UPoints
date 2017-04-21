Rails.application.routes.draw do
  resources :reports
  resources :ratings
  resources :requests
  devise_for :users
  root to: 'static_pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_scope :user do
    get 'sign_in', to: 'users/sessions#new'
    get 'sign_up', to: 'users/registrations#new'
    get 'edit_user_registration', to: 'users/registrations#edit'
  end

  match 'accept_request', to: 'requests#accept_request', via: :post
  match 'cancel_request', to: 'requests#cancel_request', via: :post
end

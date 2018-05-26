Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:update]

  resources :subscriptions, only: [:index] do
    patch :send_mail, on: :collection
  end

  # patch 'subscriptions/send'


  root 'posts#index'
  resources :posts
end

Rails.application.routes.draw do
  resources :subscriptions, only: [] do
    patch :send_mail, on: :collection
  end

  # patch 'subscriptions/send'

  devise_for :users
  root 'posts#index'
  resources :posts
end

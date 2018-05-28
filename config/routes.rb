Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:update]

  resources :subscriptions, only: [:index, :show] do
    patch :send_mail, on: :collection
    resources :users, only: [] do
      get :confirm, on: :member
    end
  end

  # patch 'subscriptions/send'


  root 'posts#index'
  resources :posts
end

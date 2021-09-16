Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :experiences, only: [:index, :show] do
    collection do
      get :sample
    end
    resources :favorites, only: [:new, :create]
  end

<<<<<<< HEAD
  resources :favorites, only: [:index]
  resources :checkout, only: [:index, :create]
=======
  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end
>>>>>>> e9d2f3e (g order n payment model/controller)
end

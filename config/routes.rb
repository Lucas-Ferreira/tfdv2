Rails.application.routes.draw do
  resources :accounts
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :routes do
    resources :travels do

    end
  end

  resources :vehicles do

  end

  resources :days do
  end

  resources :users do
  end

  resources :travels do
    resources :patients do

    end
  end

  devise_scope :user do
    get "users", to: "registrations#index"
    post "sign_up", to: "registrations#create"
    get "new_sign_up", to: "registrations#new", as: :new_sign_up
    get "edit/:id", to: "registrations#edit", as: :user_edit
    patch "update/:id", to: "registrations#update", as: :user_update
    delete "user_destroy/:id", to: "registrations#destroy", as: :user_destroy
  end
end

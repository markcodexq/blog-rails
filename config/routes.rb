# frozen_string_literal: true
Rails.application.routes.draw do
  get 'home/index'
  get 'terms' => 'pages#terms'
  get 'about' => 'pages#about'
  resource :contacts, only: [:new, :create]
  resources :articles do
    resources :comments, only: [:new, :create, :show]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

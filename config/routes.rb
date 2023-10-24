require 'sidekiq/web'

Rails.application.routes.draw do
  authenticate :user, ->(u) { u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end


  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "subjects#index"
  resources :authors
  resources :teachers
  resources :subjects
  resources :books
  resources :class_rooms

  # mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end

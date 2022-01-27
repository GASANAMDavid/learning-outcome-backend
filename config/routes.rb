# frozen_string_literal: true

require 'sidekiq/web'
Sidekiq::Web.use  ActionDispatch::Cookies
Sidekiq::Web.use  ActionDispatch::Session::CookieStore, key: '_interslice_session'

Rails.application.routes.draw do
  mount Sidekiq::Web => '/sidekiq'

  resources :learning_outcome_matrix, only: %i[index]
  put '/learning_outcome_matrix', to: 'learning_outcome_matrix#update'
  resources :history, only: %i[index]
  patch '/user', to: 'user#update'
  get '/user/list_users', to: 'user#list_users'
  resources :roles, only: %i[index]
  resources :user, only: %i[index create destroy]
end

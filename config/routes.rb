# frozen_string_literal: true

Rails.application.routes.draw do
  resources :learning_outcome_matrix, only: %i[index]
  put '/learning_outcome_matrix', to: 'learning_outcome_matrix#update'
  resources :history, only: %i[index]
  patch '/user', to: 'user#update'
  resources :roles, only: %i[index]
  resources :user, only: %i[index create destroy]
end

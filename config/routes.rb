# frozen_string_literal: true

Rails.application.routes.draw do
  resources :learning_outcome_matrix, only: %i[index update]
  put '/learning_outcome_matrix', to: 'learning_outcome_matrix#update'
  resources :history, only: %i[index]
  resources :user, only: %i[create]
end

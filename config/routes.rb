# frozen_string_literal: true

Rails.application.routes.draw do
  resources :learning_outcome_matrix, only: [:index]
end

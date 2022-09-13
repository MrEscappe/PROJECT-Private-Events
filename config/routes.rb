# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :events
  resources :users, only: :show
  resources :event_attendings, only: %i[new create]

  devise_scope :user do
    # redirect signing out users back to sign in page
    get 'users', to: 'devise/sessions#new'
  end

  root to: 'events#index'
end

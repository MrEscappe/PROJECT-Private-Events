# frozen_string_literal: true

Rails.application.routes.draw do
  resources :events

  devise_scope :user do
    # redirect signing out users back to sign in page
    get 'users', to: 'devise/sessions#new'
  end

  root to: 'events#index'
  devise_for :users
end

Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    get '/admin' => 'devise/sessions#new'
  end

  root to: 'skills#index'

  resources :skills do
  	resources :projects, except: [:index]
  end

  resources :posts do
    resources :comments
  end

  resources :recommendations
end

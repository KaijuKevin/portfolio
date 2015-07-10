Rails.application.routes.draw do
  root to: "skills#index"
  
  resources :skills do 
  	resources :projects, except: [:index]
  end

  resources :posts do
    resources :comments
  end
end


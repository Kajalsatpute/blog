Rails.application.routes.draw do
  devise_for :users
  get "up" => "rails/health#show", as: :rails_health_check
  root "posts#index"
  resource :profile, only: [:edit, :update]
  resources :posts do
    resources :comments, only: [:create]
  end  
end

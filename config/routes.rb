Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  root "lists#index"
  resources :lists, only: [:show, :create, :new, :destroy] do
    resources :bookmarks, only: [:create, :new]
  end
  resources :bookmarks, only: [:destroy]
  resources :movies, only: [:index]
end

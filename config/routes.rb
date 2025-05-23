Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  # root "posts#index"
  resources :lists, only: [:index, :show, :create, :new, :destroy] do
    resources :bookmarks, only: [:create, :new, :delete]
  end
  resources :bookmarks, only: [:destroy]
  resources :movies, only: [:index]
end

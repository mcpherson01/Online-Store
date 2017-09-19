Rails.application.routes.draw do
  namespace :admin do
    resources :movies

    root to: "movies#index"
  end

  resources :movies, only: [:show, :index]
  root 'movies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

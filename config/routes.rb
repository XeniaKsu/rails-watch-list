Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'lists#index'
  resources :list do
    resources :bookmarks, only: [:index, :new, :create]
  end
  resources :bookmarks, only: :destroy
  # Defines the root path route ("/")
  # root "articles#index"
end

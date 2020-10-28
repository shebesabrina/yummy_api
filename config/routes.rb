Rails.application.routes.draw do
  resources :search, only: [:index, :show]

  namespace :api do
    namespace :v1 do
      resources :recipe_items, only: [:index, :show]
      resources :tag_items, only: [:index, :show]
    end
  end
end

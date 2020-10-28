Rails.application.routes.draw do
  resources :search, only: [:index, :show]
  namespace :api do
    namespace :v1 do
      resources :recipes, only: [:index]
    end
  end
end

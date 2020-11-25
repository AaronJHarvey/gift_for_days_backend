Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :gifts, only: [:index, :create, :destroy]
      resources :people, only: [:index]

    end
  end
end

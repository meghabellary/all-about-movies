Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
      namespace :v1 do
        resources :movies, only: [:index, :show]
        resources :reviews, only: [:index]
      end
    end

    namespace :api do
        namespace :v1 do
          resources :actors, only: [:index, :show]
        end
      end
end

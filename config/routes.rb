Rails.application.routes.draw do
  root 'homes#index'
  get '/movies', to: redirect('/')
  get '/movies/:id', to: redirect('/')
  get '/actors/:id', to: redirect('/')
  get '/favorites', to: redirect('/')

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
      namespace :v1 do
        resources :movies, only: [:index, :show] do
        resources :reviews, only: [:index]
      end
      resources :reviews, only: [:create]
    end
  end

    namespace :api do
        namespace :v1 do
          resources :actors, only: [:index, :show]
        end
      end

      namespace :api do
          namespace :v1 do
            resources :favorites, only: [:index]
            resources :favorites, only: [:create]
            resources :favorites, only: [:destroy]
          end
      end
end

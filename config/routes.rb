Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to:"static_pages#root"
  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create]
    resource :session, only: [:create, :destroy, :show]
    resources :bathrooms, only: [:index, :create, :show, :destroy]
    resources :reviews, only: [:index, :create, :show, :destroy]

    resources :users do
      resources :reviews, only:[:index]
    end

    resources :bathrooms do
      resources :reviews, only:[:index]
    end
  end
end

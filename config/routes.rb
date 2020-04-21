Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :comments, only: [:index]
      resources :users, except: [:new, :edit]
      resources :posts, except: [:new, :edit]
      resources :tags, only: [:create, :index]
      resources :post_tags, only: [:create, :destroy, :index]
      resources :likes, only: [:create, :destroy, :update]
      
      post 'login', to: 'auth#create'
      get 'profile', to: 'users#profile'
    end
  end
end

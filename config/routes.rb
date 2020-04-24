Rails.application.routes.draw do
  root :to => 'users#new'
  resources :pictures do
    collection do
      post :confirm
    end
  end
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :show, :destroy]
end

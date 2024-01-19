Rails.application.routes.draw do
  get 'production_houses/create'
  get 'production_houses/new'
  root to:'movies#index'
  devise_for :users

  resources :movies do 
    resources :reviews
  end

  resources :directors, only: [:new, :create]
  resources :star_casts, only: [:new, :create]
end





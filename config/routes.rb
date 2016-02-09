Rails.application.routes.draw do
  devise_for :users
  resources :artists, :songs

  root to: 'artists#index'
end

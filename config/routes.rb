Rails.application.routes.draw do
  get "/homes/about" => "homes#about", as:"about"
  get 'users/top'
  root to: "homes#top"
  devise_for :users
  resources :books, only: [:new, :create, :index, :show, :edit, :destroy, :update]
  resources :users, only: [:show, :edit, :update, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

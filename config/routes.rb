Rails.application.routes.draw do
  root 'homes#top'
  get 'homes/about' => "homes#about", as: "about"
  devise_for :users
  resources :books, only: [:new, :create, :index, :edit, :update, :show, :destroy]
  resources :users, only: [:edit, :show, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

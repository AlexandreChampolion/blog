Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  root 'posts#index'
  resources :posts, only: [:index, :new, :create, :show, :update]
  get 'categories/:category_id', to: 'posts#index', as: 'category'
  get 'users/:user_id', to: 'posts#index', as: 'user'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

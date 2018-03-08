Rails.application.routes.draw do

  resources :posts, only: [] do
    resources :comments, only: [:create, :destroy]
  end
  resources :questions
  resources :advertisements
  resources :topics do
    resources :posts, except: [:index]
  end
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  post "users/confirm" => "users#confirm"


  get 'about' => 'welcome#about'

  root 'welcome#index'
end

Rails.application.routes.draw do

  devise_for :users, controllers: { sessions: "users/sessions" }
  root 'pages#index'

  devise_scope :user do
    get "/users/registrations/new" => "users/registrations"
  end

  devise_scope :user do
    get "/users/sessions/new" => "users/sessions"
  end

  get 'dist_groups/all'

  resources :dist_groups do
    resources :recipients
  end

  get "/pages/:page" => "pages#index"
  get 'pages/index'
  get 'pages/register'
  get 'pages/login'
  get 'pages/register'
  post 'pages/create'
  post 'pages/login'
  get 'home/success'
  get 'users/registrations/new'
end

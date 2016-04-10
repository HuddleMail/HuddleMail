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

  get "/pages/:page" => "pages#show"
  get 'pages/index'
  get 'pages/register'
  get 'pages/login'
  get 'pages/register'
  post 'pages/create'
  post 'pages/login'
  #post 'dist_group/new'
  #post 'recipient/new'
  get 'home/success'
  get 'users/registrations/new'
  #get 'dist_group/show' => "dist_group#index"
  #get 'recipient/show'
  #get 'dist_group/new'
  #get 'recipient/new'
  #get 'dist_group' => "dist_group#index"


end

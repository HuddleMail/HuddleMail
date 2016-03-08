Rails.application.routes.draw do


  devise_for :users, controllers: { sessions: "users/sessions" }
  root 'pages#show', page: 'index'

  devise_scope :user do
    get "/users/registrations/new" => "users/registrations"
  end

  devise_scope :user do
    get "/users/sessions/new" => "users/sessions"
  end

  get "/pages/:page" => "pages#show"
  get 'pages/index'
  get 'pages/register'
  get 'pages/login'
  get 'pages/register'
  post 'pages/create'
  post 'pages/login'
  get 'home/success'
  get 'users/registrations/new'
  get 'dist_group/show'
  get 'recipient/show'
  get 'dist_group/new'
  get 'recipient/new'



end

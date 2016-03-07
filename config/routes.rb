Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: "users/sessions" }
  root 'pages#show', page: 'index'

  devise_scope :user do
    get "/users/registrations/new" => "users/registrations"
  end

  devise_scope :user do
    get "/users/sessions/new" => "users/sessions"
  end


  Rails.application.routes.draw do
    get "/pages/:page" => "pages#show"
  end

  get 'pages/index'
  get 'pages/register'
  get 'pages/login'
  get 'pages/register'
  post 'pages/create'
  post 'pages/login'
  get 'home/success'
  get 'users/registrations/new'
end

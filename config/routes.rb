Rails.application.routes.draw do

  root 'home#index'

  get 'home/index'
  get 'home/register'
  get 'home/login'
  post 'home/create'


end

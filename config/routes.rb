Rails.application.routes.draw do
  resources :dis_groups do
    resources :rlists
  end
  get 'key_man/index'
 # root 'home#index'
  get 'home/index'
  get 'home/register'
  get 'home/login'
  get 'home/register'
  post 'home/create'
  post 'home/login'
  get 'home/success'
  root 'dis_groups#index'
end

Rails.application.routes.draw do
  resources :blogs
  resources :distilleries
  resources :bars
  resources :gins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'home/index' => 'home#index'
  root 'home#index'

  get 'about', to: 'pages#about'
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  
  resources :gins
  resources :bars
  resources :blogs
  resources :distilleries
  resources :events
  resources :botanicals
  resources :pages
end

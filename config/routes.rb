Rails.application.routes.draw do
  resources :blogs
  resources :distilleries
  resources :bars
  resources :gins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'home/index' => 'home#index'
  root 'home#index'

  #static pages
  get 'about', to: 'pages#about'
  get 'faq', to: 'pages#faq'
  get 'privacy', to: 'pages#privacy'
end

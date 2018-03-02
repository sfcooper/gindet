Rails.application.routes.draw do
  devise_for :admins
  resources :pages
  resources :blogs
  resources :distilleries
  resources :bars
  resources :gins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'home/index' => 'home#index'
  root 'home#index'


  #authentication
    devise_for :admins, controllers: {
      sessions: 'admins/sessions',
      registrations: 'admins/registrations',
      unlocks: 'admins/unlocks'
    }
    devise_scope :user do
      delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_fb_user_session
    end

end

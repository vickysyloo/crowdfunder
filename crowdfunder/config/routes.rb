Rails.application.routes.draw do

  root 'pages#home'

  resources :projects do
    resources :pledges
  end

  resources :users

  resources :sessions

  get 'login' => 'sessions#new', :as => :login
  post 'logout' => 'sessions#destroy', :as => :logout

end

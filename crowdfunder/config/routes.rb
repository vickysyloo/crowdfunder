Rails.application.routes.draw do

  root 'pages#home'

  resources :projects do
    resources :pledges
  end

  resources :users

end

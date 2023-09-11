Rails.application.routes.draw do
  get '/new', to: 'products#new'
  get '/create', to: 'products#create'
  get '/detail', to: 'pages#detail'
  post '/product_mailer',to: 'product_mailer#new_product_notification'
  devise_for :users

  # Product routes
  resources :products, only: [:new, :create]
  resources :products, only: [:index], defaults: { format: 'json' }
  resources :products

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end

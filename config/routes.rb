Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :plants, only: [:index, :show, :create, :edit]
  get 'featured', to: 'plants#featured'
  post '/create_payment_intent', to: 'payments#create_payment_intent'
end

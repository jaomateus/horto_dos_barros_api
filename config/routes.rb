Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # get 'plants', to: 'plants#all_plants'
  # get 'plant', to: 'plants#plant'
  resources :plants, only: [:index, :show, :create, :edit]
  get 'featured', to: 'plants#featured'
end

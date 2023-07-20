Rails.application.routes.draw do

  get 'documentaryfilm/index'
  get 'documentaryfilm/create'
  get 'documentaryfilm/new'
  get 'serie/index'
  get 'serie/create'
  get 'serie/new'
  get 'movie/index'
  get 'movie/create'
  get 'movie/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  #Rutas Post
  
  post 'movie/create'
  post 'serie/create'
  post 'documentaryfilm/create'

  # Defines the root path route ("/")
   root "movie#index"
end

Rails.application.routes.draw do
  resources :code_retreat_sessions
  resources :users
  get 'hello/world'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

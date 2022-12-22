 Rails.application.routes.draw do
  get 'lab10/input'
  get 'lab10/view'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'lab10#input'
  # root "articles#index"
end

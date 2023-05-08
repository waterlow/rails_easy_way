Rails.application.routes.draw do
  get '/', to: ->(_) { [200, {}, ['ok']] }

  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

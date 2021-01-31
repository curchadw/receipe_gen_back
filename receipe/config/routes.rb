Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :catagory
resources :recipes
get '/categories', to: 'categories#index'

get '/recipes', to: 'recipes#index'
post '/recipes', to: 'recipes#create'
get '/recipes/:id', to: 'recipes#show'
delete'/recipes/:id/delete', to: 'recipes#destroy'


end

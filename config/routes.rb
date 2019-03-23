Rails.application.routes.draw do

  get '/recipes', to: 'recipes#index'
  get 'recipes/new', to: 'recipes#new', as: 'new_recipe'
  post '/recipes', to: 'recipes#create'
  get '/recipes/:id', to: 'recipes#show', as: 'recipe'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

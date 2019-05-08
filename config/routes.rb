Rails.application.routes.draw do
  resources :ingredients, :recipes, only: [:index, :show, :new, :create, :edit, :update]
end

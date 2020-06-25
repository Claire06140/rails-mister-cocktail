Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "/cocktails", to: "cocktails#index", as: :cocktails

  # get "/cocktails/new", to: "cocktails#new", as: :new_cocktail
  # post "/cocktails", to: "cocktails#create"

  # get "/cocktails/:id", to: "cocktails#show", as: :cocktail

resources :cocktails, only: [:index, :new, :create, :show]
end

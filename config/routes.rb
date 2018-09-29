Rails.application.routes.draw do

  root "animals#index"

  get "/animals", to: "animals#index", as: "animals"

  get 'animals/new', to: 'animals#new', as: 'new_animal'
  post 'animals', to: 'animals#create'

  patch 'animals/:id', to: 'animals#update'
  get '/animals/:id/edit', to: 'animals#edit', as: 'edit_animal'

  get "/animals/:id", to: "animals#show", as: "animal"

end

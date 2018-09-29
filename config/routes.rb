Rails.application.routes.draw do

  root "animals#index"

  get "/animals", to: "animals#index", as: "animals"

end

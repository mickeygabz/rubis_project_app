Rails.application.routes.draw do
  resources :missions, only: [:index, :new, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "missions#index"
end

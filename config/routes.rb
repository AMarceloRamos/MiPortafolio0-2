Rails.application.routes.draw do
  resources :contact_forms, only: [:new, :create]
  get 'contact_forms/new'
  get 'contact_forms/create'
  # get "contact", to:'contact#index'
  get "resume", to:'resume#index'
  get "home", to: 'home#index'
  get "projects", to:'project#index'
  get '/descargar/archivo', to: 'downloads#descargar_archivo'
 

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end

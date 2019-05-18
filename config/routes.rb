Rails.application.routes.draw do
  get 'users/index'
  get 'users/create'
  get '/v1/shipments', to: "shipments#index"
  post '/v1/shipments/:id', to: "shipments#create"

  get '/v1/deliveries', to: "deliveries#index"
  post '/v1/deliveries/:id', to: "deliveries#create"

  post '/v1/companies/:id', to: "companies#create"

  # get 'deliveries/index'
  # get 'shipments/index'
  # get 'shipments/show'
  # get 'shipments/new'
  # get 'shipments/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get '/v1/shipments', to: "shipments#index"
  post '/v1/shipments', to: "shipments#create"

  get '/v1/deliveries', to: "deliveries#index"
  post '/v1/deliveries', to: "deliveries#create"

  get '/v1/companies', to: "companies#index"
  post '/v1/companies', to: "companies#create"
  get '/v1/companies/:id/total_deliveries', to: "companies#total_deliveries"
  get '/v1/companies/:id/on_time_deliveries', to: "companies#on_time_deliveries"
  get '/v1/companies/:id/late_deliveries', to: "companies#late_deliveries"
  get '/v1/companies/:id/total_cost', to: "companies#total_cost"
  get '/v1/companies/:id/late_cost', to: "companies#late_cost"

  get '/v1/carriers', to: "carriers#index"
  get '/v1/carriers/:id', to: "carriers#show"
  post '/v1/carriers', to: "carriers#create"

  # get 'deliveries/index'
  # get 'shipments/index'
  # get 'shipments/show'
  # get 'shipments/new'
  # get 'shipments/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

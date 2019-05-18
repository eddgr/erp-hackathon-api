Rails.application.routes.draw do
  get 'deliveries/index'
  get 'shipments/index'
  get 'shipments/show'
  get 'shipments/new'
  get 'shipments/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

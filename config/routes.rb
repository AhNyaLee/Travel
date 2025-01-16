Rails.application.routes.draw do
  resources :client_lists
  resources :countries
  resources :histore_orders
  get "up" => "rails/health#show", as: :rails_health_check

end

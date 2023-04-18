Rails.application.routes.draw do
  resources :route_plan_details
  resources :outlets
  resources :gps_logs
  resources :route_plans
  resources :merchandisers, only: [:create, :update, :destroy, :index, :show, :new]

  resources :sales_managers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

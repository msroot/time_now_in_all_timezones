Rails.application.routes.draw do
  resources :time_zones, only: [:index]
  root to: "time_zones#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  
  resources :advertising_orders, only: [:new, :create, :show]

end

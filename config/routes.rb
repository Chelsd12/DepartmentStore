Rails.application.routes.draw do
  root "groceries#index"
  
  resources :groceries do
    resources :items
  end
end

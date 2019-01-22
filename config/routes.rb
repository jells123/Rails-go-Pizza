Rails.application.routes.draw do
  root "foods#index"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :foods do
  	resources :orders
  end

end

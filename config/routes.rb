Rails.application.routes.draw do
  devise_for :users
  resources :school_registers
  resources :session
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: "user#sign_in"
end

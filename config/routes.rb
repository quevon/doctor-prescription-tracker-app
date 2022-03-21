Rails.application.routes.draw do

  resources :drugs
  resources :doctors do
    resources :prescriptions
  end

  root to: "doctors#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

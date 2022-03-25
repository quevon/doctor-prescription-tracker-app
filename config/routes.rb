Rails.application.routes.draw do
  
 
  resources :drugs
  root to: 'doctors#index'
  resources :doctors do
    resources :prescriptions do
      resources :prescription_drugs
    end
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  
  get 'prescriptions', to:'prescriptions#prescription', as: 'all_prescriptions'
  resources :drugs
  resources :doctors do
    resources :prescriptions do
      resources :prescription_drugs
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

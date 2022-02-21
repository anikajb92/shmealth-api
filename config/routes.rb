Rails.application.routes.draw do
  resources :appointments
  resources :vitals
  resources :prescriptions
  resources :members
  resources :doctors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
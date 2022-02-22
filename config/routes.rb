Rails.application.routes.draw do
  resources :appointments
  resources :vitals
  resources :prescriptions
  resources :members
  resources :doctors

  get '/current_meds', to: 'patients#current_meds'
end

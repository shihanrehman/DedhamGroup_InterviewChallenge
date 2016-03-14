Rails.application.routes.draw do
  resources :contacts
  resources :contenttypes
  resources :media
  root to: 'contacts#index'  
end

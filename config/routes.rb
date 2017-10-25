Rails.application.routes.draw do
  resources :armors
  resources :skills
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'classes#index'

  resources :classes
  resources :abilities

end

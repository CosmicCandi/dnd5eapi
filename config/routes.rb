Rails.application.routes.draw do
  resources :weapons
  resources :skills
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'classes#index'

  resources :classes
  resources :abilities
  resources :armor_categories do
    resources :armors, only: [:index, :create]
  end
  resources :armors, except: [:create, :new]
end


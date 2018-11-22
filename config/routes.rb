Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [ :show, :new, :create, :destroy ]
  end
end

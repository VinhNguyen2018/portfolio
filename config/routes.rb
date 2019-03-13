Rails.application.routes.draw do
  root to: 'pages#home'
  resources :message, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

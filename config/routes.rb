Rails.application.routes.draw do
  root 'sessions#new'
  get 'sessions/new'
  get 'usuarios/new'
  resources :usuarios

  get    'sign_in'   => 'sessions#new'
  post   'sign_in'   => 'sessions#create'
  delete 'sign_out'  => 'sessions#destroy'
end

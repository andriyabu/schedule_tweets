Rails.application.routes.draw do
  get '/about-us', to: 'about#index', as: :about

  get 'password', to: 'passwords#edit', as: :edit_password
  patch 'password', to: 'passwords#update'

  get 'password_reset', to: 'password_resets#new'
  post 'password_reset', to: 'password_resets#create'

  get 'sign_up', to: 'registrations#new'
  post 'sign_up', to: 'registrations#create'
  
  get 'log_in', to: 'sessions#new'
  post 'log_in', to: 'sessions#create'
  delete 'log_out', to: 'sessions#destroy'

  root to: 'main#index'

end

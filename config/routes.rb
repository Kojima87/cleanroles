Rails.application.routes.draw do
  resources :roles
  resources :members
  root 'top#index'
#  post 'add_entry' => 'top#add_entry'
  get    'login'   => 'sessions#new'
  post   'session'   => 'sessions#create'
  delete 'session'  => 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

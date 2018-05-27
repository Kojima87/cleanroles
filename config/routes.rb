Rails.application.routes.draw do
  namespace :manage do
    resources :members
    resources :roles
    resources :histories
  end

  post 'lottery' => 'top#lottery'
  get 'lottery' => 'top#lottery'

  root 'top#index'
end

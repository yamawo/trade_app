Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    root to: "devise/sessions#new"
  end
  resources :wallets,   only: :index
  resources :bitcoins,  only: :index

  namespace :api do
    resources :bitcoins, only: :index, defaults: { format: 'json'}
  end
end

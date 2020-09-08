Rails.application.routes.draw do
  root to: 'snaps#index'
  resources :snaps
end

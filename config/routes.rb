Rails.application.routes.draw do
  resources  :accounts
  root to: 'claro#index'

end

Rails.application.routes.draw do
  devise_for :customers
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  get 'sedes-personal', to: 'home#sedes'

  get 'home/download_intertecnicos'
  get 'home/download_file'


end


Rails.application.routes.draw do
  mount Lines::Engine => "/blog"
  devise_for :customers
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  get 'sedes-personal', to: 'home#sedes'
  get 'home/motores-electricos', to: 'home#engines'
  get 'personal(.:format)', to: 'devise/registrations#new'

  # Mails Landing Details
  get 'plantas-electricas', to: 'home#electric_plants_details'
  get 'redes-electricas', to: 'home#electric_networks_details'
  get 'subestaciones-electricas', to: 'home#electric_substation_details'
  get 'motores-electricos', to: 'home#electric_engines_details'

  get 'store', to: 'store#index'
  get 'workers', to: 'workers#index'

  get 'home/download_intertecnicos'
  get 'home/download_file'

  get '/robots.:format' => 'home#robots'


  resources :admins do
    resources :workers
    resources :daily_entrys
  end

  namespace :user do
    root :to => "welcome#index"
  end

  direct :homepage do
    "https://intertecnicos.com/"
  end

  direct :homepage_worker do
    "https://intertecnicos.com/workers"
  end



  get '/404', to: 'errors#not_found'
  get '/500', to: 'errors#server_error'
  get '/422', to: 'errors#unacceptable'


end

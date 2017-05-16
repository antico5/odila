Rails.application.routes.draw do
  root to: 'home#index'

  get 'reporte-2015' => 'home#reporte2015'
  get 'reporte' => 'home#reporte'
  get 'glosario' => 'home#glosario'
  get 'difusion' => 'home#difusion'
  get 'tos' => 'home#tos'

  resources :denuncias, only: [:show, :create] do
    collection do
      get 'exito'
    end
  end

  resources :consultas do
    collection do
      get 'exito'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

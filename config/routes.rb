Rails.application.routes.draw do
  devise_for :users
  root to: 'favours#index'

  resources :favours do
    resources :contracts, only: [:new, :create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :contracts, only: [:index]

  get 'my_favours', to: 'favours#myfavours'
end

Rails.application.routes.draw do
  resources :decks
  resources :cards
  resources :users

  get '/login', to: 'users#display_login_form'
  post '/users/authenticate', to: 'users#authenticate'

  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests, only: [:index]
  resources :episodes, only: [:index]

get '/form', to: 'application#form'

post '/form', to: 'application#createform'

get '/episode/:id', to: 'application#episode'



end

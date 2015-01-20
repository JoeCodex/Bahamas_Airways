Rails.application.routes.draw do

  get '/flights/:flight_id/seats', to: 'seats#flight_seats'

  resources :seats

  resources :flights

end

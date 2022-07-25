Rails.application.routes.draw do
  

   root :to => 'pages#home' # Sets the root path to the users folder and the index page within that

   resources :trainers # Provides all 
   resources :users
   resources :bookings

   get '/login' => 'session#new'
    post '/login' => 'session#create'
      delete '/login' => 'session#destroy'
end

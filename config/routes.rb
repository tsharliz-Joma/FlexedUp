Rails.application.routes.draw do
  root :to => 'users#index' # Sets the root path to the users folder and the index page within that
   resources :trainers
   resources :users
   resources :bookings

   get '/users' => 'users#index' # When a get request is made it get the users folder and the index page within that, or you could say whenever the /users page is looked up it will display the contents of the index within the users folder 
   get '/users/new' => 'users#new' # This Allows the Sign in button to take you to the Sign , 
end

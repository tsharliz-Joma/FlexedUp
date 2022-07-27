class Trainer < ApplicationRecord 
    has_secure_password
    has_many :sessions
    # has_many :users # This is saying that a trainer has many users, meaning you can assign users to the trainer 
    # has_many :bookings # This is saying that the trainer has many bookings, meaning you can assign bookings to the trainer 
end
  
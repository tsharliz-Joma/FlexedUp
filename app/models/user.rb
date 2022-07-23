class User < ApplicationRecord
    #has_secure_password
    has_many :trainers 
    has_many :bookings
    #validates :email, :uniqueness => true, :presence => true
end
 
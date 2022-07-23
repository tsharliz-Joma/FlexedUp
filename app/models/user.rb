class User < ApplicationRecord
    #has_secure_password
    has_and_belongs_to_many :trainers
    has_many :bookings
    #validates :email, :uniqueness => true, :presence => true
end
 
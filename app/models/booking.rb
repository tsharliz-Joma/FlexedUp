class Booking < ApplicationRecord
    # So This is essentially the join table ? 
    belongs_to :trainer, :optional => true # This is saying that a booking belongs to a trainer meaning you cannot assign anything to the booking but you can assign the booking to a trainer 
    belongs_to :user, :optional => true # This is saying that a booking belongs to a trainer meaning you cannot assign the booking to a user but you can assign a user the booking 
end
  
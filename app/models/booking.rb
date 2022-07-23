class Booking < ApplicationRecord
    # So This is essentially the join table ? 
    belongs_to :trainer 
    belongs_to :user 
end
  
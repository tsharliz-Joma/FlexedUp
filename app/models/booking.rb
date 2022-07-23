class Booking < ApplicationRecord
    # So This is essentially the join table ? 
    belongs_to :trainer, :optional => true
    belongs_to :user, :optional => true
end
  
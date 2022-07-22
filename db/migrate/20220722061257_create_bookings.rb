class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.date :tnd
      t.integer :user_id
      t.string :trainer_id
      t.text :location

      t.timestamps
    end
  end
end

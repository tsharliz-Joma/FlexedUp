class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :name
      t.text :image
      t.text :email
      t.text :favourite
      t.integer :trainer_id
      t.integer :booking_id
      t.string :password_digest

      t.timestamps
    end
  end
end

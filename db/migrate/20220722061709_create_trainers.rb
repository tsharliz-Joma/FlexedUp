class CreateTrainers < ActiveRecord::Migration[5.2]
  def change
    create_table :trainers do |t|
      t.text :name
      t.text :image
      t.integer :user_id
      t.text :speciality
      t.text :email
      t.string :password_digest

      t.timestamps
    end
  end
end

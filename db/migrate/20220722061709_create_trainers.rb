class CreateTrainers < ActiveRecord::Migration[5.2]
  def change
    create_table :trainers do |t|
      t.text :name
      t.text :image
      t.text :speciality
      t.text :email
      t.text :password

      t.timestamps
    end
  end
end

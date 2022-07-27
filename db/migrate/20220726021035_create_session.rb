class CreateSession < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.datetime :date
      t.text :location
      t.integer :trainer_id
    end
  end
end

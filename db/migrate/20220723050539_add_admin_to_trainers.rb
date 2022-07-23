class AddAdminToTrainers < ActiveRecord::Migration[5.2]
  def change
    add_column :trainers, :admin, :boolean, :default => false
  end
end

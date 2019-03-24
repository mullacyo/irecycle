class AddWasteToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :waste, :float
  end
end

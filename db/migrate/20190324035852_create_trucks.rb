class CreateTrucks < ActiveRecord::Migration[5.2]
  def change
    create_table :trucks do |t|
      t.string :address
      t.datetime :time
      t.timestamps
    end
  end
end

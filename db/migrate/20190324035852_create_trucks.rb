class CreateTrucks < ActiveRecord::Migration[5.2]
  def change
    create_table :trucks do |t|
      t.datetime :time
      t.timestamps
    end
  end
end

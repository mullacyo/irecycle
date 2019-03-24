class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :phone
      t.string :email
      t.string :password_digest
      t.integer :roles, default: 0
      t.float :waste, default: 0.0

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end

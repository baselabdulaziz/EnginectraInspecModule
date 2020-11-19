class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      
      t.column :email, :string
      t.column :password_hash, :string
      t.column :password_salt, :string


      t.timestamps
    end
  end
end
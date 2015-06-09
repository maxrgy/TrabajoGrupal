class CreateClientAddresses < ActiveRecord::Migration
  def change
    create_table :client_addresses do |t|
      t.string :email, null:false
      t.integer :co_direccion, null:false

      t.timestamps null: false
    end
    add_index :client_addresses, :email
    add_index :client_addresses, :co_direccion
  end
end

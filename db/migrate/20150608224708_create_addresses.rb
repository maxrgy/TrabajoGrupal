class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :co_direccion, null:false
      t.string :no_direccion
      t.integer :co_distrito

      t.timestamps null: false
    end
    add_index :addresses, :co_direccion
  end
end

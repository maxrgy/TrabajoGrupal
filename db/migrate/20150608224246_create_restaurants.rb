class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.integer :co_local, null:false
      t.string :name
      t.integer :co_distrito
      t.string :email
      t.string :password
      t.string :telefono
      t.string :direccion

      t.timestamps null: false
    end
    add_index :restaurants, :co_local
  end
end

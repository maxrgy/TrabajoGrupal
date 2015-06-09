class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.integer :co_plato, null:false
      t.string :no_plato
      t.string :no_tipoplato

      t.timestamps null: false
    end
    add_index :dishes, :co_plato
  end
end

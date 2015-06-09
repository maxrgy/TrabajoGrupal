class CreateMenuDetails < ActiveRecord::Migration
  def change
    create_table :menu_details do |t|
      t.integer :co_detallemenu, null:false
      t.integer :co_local
      t.integer :qt_precio
      t.integer :co_menu, null:false
      t.integer :co_plato
      

      t.timestamps null: false
    end
    add_index :menu_details, :co_detallemenu
  end
end

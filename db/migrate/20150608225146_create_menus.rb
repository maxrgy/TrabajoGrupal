class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.integer :co_menu, null:false
      t.date :fe_fecha
      t.integer :qt_menu
      t.integer :co_local, null:false

      t.timestamps null: false
    end
    add_index :menus, :co_menu
  end
end

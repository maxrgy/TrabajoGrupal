class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :co_pedido, null:false
      t.string :email
      t.integer :qt_montototal
      t.string :estado
      t.integer :co_local

      t.timestamps null: false
    end
    add_index :orders, :co_pedido
  end
end

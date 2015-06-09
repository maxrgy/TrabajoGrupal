class CreateOrderDetails < ActiveRecord::Migration
  def change
    create_table :order_details do |t|
      t.integer :co_detallepedido
      t.integer :co_plato
      t.string :no_tipoplato
      t.string :string
      t.integer :qt_precio
      t.integer :qt_cantidad
      t.integer :co_pedido

      t.timestamps null: false
    end
    add_index :order_details, :co_detallepedido
  end
end

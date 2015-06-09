class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :email, null:false
      t.string :name
      t.string :phone
      t.string :password

      t.timestamps null: false
    end
    add_index :clients, :email
  end
end

class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.string :co_distrito, null:false
      t.string :no_distrito

      t.timestamps null: false
    end
    add_index :districts, :co_distrito
  end
end

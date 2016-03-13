class CreateCarroLineas < ActiveRecord::Migration
  def change
    create_table :carro_lineas do |t|
      t.integer :product_id
      t.integer :carro_id

      t.timestamps
    end
  end
end

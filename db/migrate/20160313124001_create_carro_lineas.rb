class CreateCarroLineas < ActiveRecord::Migration
  def change
    create_table :carro_lineas do |t|
      t.string :product_id
      t.string :integer
      t.integer :carro_id

      t.timestamps
    end
  end
end

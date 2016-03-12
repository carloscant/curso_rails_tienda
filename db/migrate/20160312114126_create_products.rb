class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :titulo
      t.text :descripcion
      t.string :imagen_url
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end

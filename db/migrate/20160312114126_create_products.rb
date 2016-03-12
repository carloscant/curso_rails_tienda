class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :titulo
      t.text :descripcion
      t.string :imagen_url
      t.decimal :price

      t.timestamps
    end
  end
end

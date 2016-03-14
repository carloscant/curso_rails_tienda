class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.string :nombre
      t.text :direccion
      t.string :email

      t.timestamps
    end
  end
end

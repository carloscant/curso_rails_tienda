class AddPedidoIdToCarroLinea < ActiveRecord::Migration
  def change
    add_column :carro_lineas, :pedido_id, :integer
  end
end

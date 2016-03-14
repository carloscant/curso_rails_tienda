class CarroLinea < ActiveRecord::Base
  attr_accessible :carro_id, :integer, :product_id

  belongs_to :pedido
  belongs_to :product
  belongs_to :carro
end

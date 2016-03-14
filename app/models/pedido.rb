class Pedido < ActiveRecord::Base
  attr_accessible :direccion, :email, :nombre
end

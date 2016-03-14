class Pedido < ActiveRecord::Base
  attr_accessible :direccion, :email, :nombre

  has_many :carro_lineas, dependent: :destroy

  validates :nombre, :direccion, :email, presence: true

  def anadir_lineas(carro)

    carro.carro_lineas.each do |linea|

      linea.carro_id = nil

      self.carro_lineas << linea

    end

  end
  
end

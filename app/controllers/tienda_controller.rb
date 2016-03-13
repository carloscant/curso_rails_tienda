class TiendaController < ApplicationController
  def index
  	@productos = Product.order(:titulo)
  	@carro = carro_actual
  end
end

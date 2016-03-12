class TiendaController < ApplicationController
  def index
  	@productos = Product.order(:titulo)
  end
end

#encoding: UTF-8

class CarroLineasController < ApplicationController
  # GET /carro_lineas
  # GET /carro_lineas.json
  def index
    @carro_lineas = CarroLinea.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @carro_lineas }
    end
  end

  # GET /carro_lineas/1
  # GET /carro_lineas/1.json
  def show
    @carro_linea = CarroLinea.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @carro_linea }
    end
  end

  # GET /carro_lineas/new
  # GET /carro_lineas/new.json
  def new
    @carro_linea = CarroLinea.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @carro_linea }
    end
  end

  # GET /carro_lineas/1/edit
  def edit
    @carro_linea = CarroLinea.find(params[:id])
  end

  # POST /carro_lineas
  # POST /carro_lineas.json
  def create

    #Recuperamos el carro
    @carro = carro_actual
    #Obtrenemos el producto
    @producto = Product.find(params[:product_id])

    @carro_linea = CarroLinea.new({carro_id: @carro.id,product_id: @producto.id})

    respond_to do |format|
      if @carro_linea.save
        format.html { redirect_to @carro, notice: 'Producto añadido correctamente.' }
        format.js
        format.json { render json: @carro_linea, status: :created, location: @carro_linea }
      else
        format.html { render action: "new" }
        format.json { render json: @carro_linea.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /carro_lineas/1
  # PUT /carro_lineas/1.json
  def update
    @carro_linea = CarroLinea.find(params[:id])

    respond_to do |format|
      if @carro_linea.update_attributes(params[:carro_linea])
        format.html { redirect_to @carro_linea, notice: 'Carro linea was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @carro_linea.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carro_lineas/1
  # DELETE /carro_lineas/1.json
  def destroy
    @carro_linea = CarroLinea.find(params[:id])

    carro = @carro_linea.carro

    @carro_linea.destroy

    respond_to do |format|
      format.html { redirect_to carro }
      format.json { head :no_content }
    end
  end
end

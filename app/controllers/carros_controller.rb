class CarrosController < ApplicationController
  # GET /carros
  # GET /carros.json
  def index
    @carros = Carro.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @carros }
    end
  end

  # GET /carros/1
  # GET /carros/1.json
  def show
    @carro = Carro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @carro }
    end
  end

  # GET /carros/new
  # GET /carros/new.json
  def new
    @carro = Carro.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @carro }
    end
  end

  # GET /carros/1/edit
  def edit
    @carro = Carro.find(params[:id])
  end

  # POST /carros
  # POST /carros.json
  def create
    @carro = Carro.new(params[:carro])

    respond_to do |format|
      if @carro.save
        format.html { redirect_to @carro, notice: 'Carro was successfully created.' }
        format.json { render json: @carro, status: :created, location: @carro }
      else
        format.html { render action: "new" }
        format.json { render json: @carro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /carros/1
  # PUT /carros/1.json
  def update
    @carro = Carro.find(params[:id])

    respond_to do |format|
      if @carro.update_attributes(params[:carro])
        format.html { redirect_to @carro, notice: 'Carro was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @carro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carros/1
  # DELETE /carros/1.json
  def destroy
    @carro = Carro.find(params[:id])
    @carro.destroy

    respond_to do |format|
      format.html { redirect_to carros_url }
      format.json { head :no_content }
    end
  end
end

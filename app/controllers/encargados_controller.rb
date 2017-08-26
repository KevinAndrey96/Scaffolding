class EncargadosController < ApplicationController
  before_action :set_encargado, only: [:show, :edit, :update, :destroy]

  # GET /encargados
  # GET /encargados.json
  def index
    @encargados = Encargado.all
  end

  # GET /encargados/1
  # GET /encargados/1.json
  def show
  end

  # GET /encargados/new
  def new
    @encargado = Encargado.new
  end

  # GET /encargados/1/edit
  def edit
  end

  # POST /encargados
  # POST /encargados.json
  def create
    @encargado = Encargado.new(encargado_params)

    respond_to do |format|
      if @encargado.save
        format.html { redirect_to @encargado, notice: 'Encargado was successfully created.' }
        format.json { render :show, status: :created, location: @encargado }
      else
        format.html { render :new }
        format.json { render json: @encargado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /encargados/1
  # PATCH/PUT /encargados/1.json
  def update
    respond_to do |format|
      if @encargado.update(encargado_params)
        format.html { redirect_to @encargado, notice: 'Encargado was successfully updated.' }
        format.json { render :show, status: :ok, location: @encargado }
      else
        format.html { render :edit }
        format.json { render json: @encargado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /encargados/1
  # DELETE /encargados/1.json
  def destroy
    @encargado.destroy
    respond_to do |format|
      format.html { redirect_to encargados_url, notice: 'Encargado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_encargado
      @encargado = Encargado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def encargado_params
      params.require(:encargado).permit(:nombre, :carrera, :semestre, :proyecto_id)
    end
end

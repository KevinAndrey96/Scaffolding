class ProyectoPatrocinadorsController < ApplicationController
  before_action :set_proyecto_patrocinador, only: [:show, :edit, :update, :destroy]

  # GET /proyecto_patrocinadors
  # GET /proyecto_patrocinadors.json
  def index
    @proyecto_patrocinadors = ProyectoPatrocinador.all
  end

  # GET /proyecto_patrocinadors/1
  # GET /proyecto_patrocinadors/1.json
  def show
  end

  # GET /proyecto_patrocinadors/new
  def new
    @proyecto_patrocinador = ProyectoPatrocinador.new
  end

  # GET /proyecto_patrocinadors/1/edit
  def edit
  end

  # POST /proyecto_patrocinadors
  # POST /proyecto_patrocinadors.json
  def create
    @proyecto_patrocinador = ProyectoPatrocinador.new(proyecto_patrocinador_params)

    respond_to do |format|
      if @proyecto_patrocinador.save
        format.html { redirect_to @proyecto_patrocinador, notice: 'Proyecto patrocinador was successfully created.' }
        format.json { render :show, status: :created, location: @proyecto_patrocinador }
      else
        format.html { render :new }
        format.json { render json: @proyecto_patrocinador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proyecto_patrocinadors/1
  # PATCH/PUT /proyecto_patrocinadors/1.json
  def update
    respond_to do |format|
      if @proyecto_patrocinador.update(proyecto_patrocinador_params)
        format.html { redirect_to @proyecto_patrocinador, notice: 'Proyecto patrocinador was successfully updated.' }
        format.json { render :show, status: :ok, location: @proyecto_patrocinador }
      else
        format.html { render :edit }
        format.json { render json: @proyecto_patrocinador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proyecto_patrocinadors/1
  # DELETE /proyecto_patrocinadors/1.json
  def destroy
    @proyecto_patrocinador.destroy
    respond_to do |format|
      format.html { redirect_to proyecto_patrocinadors_url, notice: 'Proyecto patrocinador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proyecto_patrocinador
      @proyecto_patrocinador = ProyectoPatrocinador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def proyecto_patrocinador_params
      params.require(:proyecto_patrocinador).permit(:proyecto_id, :patrocinador_id)
    end
end

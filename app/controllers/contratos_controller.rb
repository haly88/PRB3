class ContratosController < ApplicationController
  before_action :set_contrato, only: [:show, :edit, :update, :destroy]
  before_action :set_titulo
  

  # GET /contratos
  # GET /contratos.json
  def index
    @contratos = Contrato.all
  end

  # GET /contratos/1
  # GET /contratos/1.json
  def show
  end

  # GET /contratos/new
  def new
    @contrato = Contrato.new
  end

  # GET /contratos/1/edit
  def edit
  end

  # POST /contratos
  # POST /contratos.json
  def create
    @contrato = Contrato.new(contrato_params)

    respond_to do |format|
      if @contrato.save
        format.html { redirect_to edit_contrato_path(@contrato), notice: 'El Contrato se creo exitosamente.' }
        format.json { render action: 'edit', status: :created, location: @contrato }
      else
        format.html { render :new }
        format.json { render json: @contrato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contratos/1
  # PATCH/PUT /contratos/1.json
  def update
    respond_to do |format|
      if @contrato.update(contrato_params)
        format.html { redirect_to edit_contrato_path(@contrato), notice: 'El Contrato se actualizo exitosamente.' }
        format.json { render action: 'edit', status: :ok, location: @contrato }
      else
        format.html { render :edit }
        format.json { render json: @contrato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contratos/1
  # DELETE /contratos/1.json
  def destroy
    @contrato.destroy
    respond_to do |format|
      format.html { redirect_to contratos_url, notice: 'El Contrato se borro exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contrato
      @contrato = Contrato.find(params[:id])
      @contrato_items = @contrato.contrato_items
    end
    
    def set_titulo
      @titulo = "Contratos"
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contrato_params
      params.require(:contrato).permit(:codigo, :nombre, :activo, :descripcion, :carpeta, :fecha_inicio, :fecha_fin, :fecha_prorroga_hasta, :monto)
    end
end

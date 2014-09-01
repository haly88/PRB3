class ContratoItemsController < ApplicationController

	before_action :set_contrato_item, only: [:show, :edit, :update, :destroy]
	before_action :set_contrato, only: [:new]

	def new
		@contrato_item = @contrato.contrato_items.build
	end

	def edit
  	end

	def create
    @contrato_item = ContratoItem.new(contrato_item_params)

	    respond_to do |format|
	      	if @contrato_item.save
	        	format.html { redirect_to edit_contrato_path(@contrato), notice: 'El Contrato Item se creo exitosamente.' }
	      	else
	        	format.html { render :new }
	        	format.json { render json: @contrato_item.errors, status: :unprocessable_entity }
	      	end
	    end
	end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_contrato
      @contrato = Contrato.find(params[:id])
    end

    def set_contrato_item
      @contrato_item = ContratoItem.find(params[:id])
    end
    
    def set_titulo
      @titulo = "Contratos Items"
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contrato_item_params
      params.require(:contrato_item).permit(:fecha, :monto, :contrato_id)
    end
end

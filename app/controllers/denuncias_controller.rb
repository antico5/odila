class DenunciasController < ApplicationController
  def create
    @denuncia = Denuncia.new(denuncia_params)

    if @denuncia.save
      redirect_to denuncia_path(@denuncia)
    else
      redirect_to root_path, error: 'Hubo errores procesando su denuncia.'
    end
  end

  def show
    @denuncia = Denuncia.find(params[:id])
    @legislacion = @denuncia.legislacion
    @centros = CentroDeDenuncia.where pais: @denuncia.pais
  end

  private
    def denuncia_params
      params.require(:denuncia).permit(
        :pais_id,
        :delito_id,
        item_denuncias_attributes: [
          :pregunta_id,
          :opcion_id,
          :fecha,
          :observacion,
          opciones_multiples: []
        ]
      )
    end
end

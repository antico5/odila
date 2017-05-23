class DenunciasController < ApplicationController
  def create
    @denuncia = Denuncia.new(denuncia_params)
    @denuncia.ip = request.remote_ip

    if @denuncia.save
      DenunciaMailer.resultado(@denuncia.id).deliver_later
      redirect_to denuncia_path(@denuncia)
    else
      redirect_to root_path, error: 'Hubo errores procesando su denuncia.'
    end
  end

  def show
    @denuncia = Denuncia.find(params[:id])
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

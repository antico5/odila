class DenunciasController < ApplicationController
  def create
    @denuncia = Denuncia.new(denuncia_params)

    if @denuncia.save
      redirect_to root_path, notice: 'Denuncia was successfully created.'
    else
      redirect_to root_path, notice: 'Denuncia was not created.'
    end
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

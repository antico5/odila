class DenunciasController < ApplicationController
  def create
    @denuncia = Denuncia.new(denuncia_params)

    respond_to do |format|
      if @denuncia.save
        redirect_to @denuncia, notice: 'Denuncia was successfully created.'
      else
        render :new
      end
    end
  end

  private
    def denuncia_params
      params.require(:denuncia).permit(:pais_id, :delito_id, :fecha)
    end
end

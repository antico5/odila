class ConsultasController < ApplicationController
  def create
    consulta = Consulta.new(consulta_params)
    if consulta.save
      redirect_to exito_consultas_path
    else
      redirect_to root_path
    end
  end

  def exito

  end

  private

  def consulta_params
    params.require(:consulta).permit(:nombre, :email, :consulta)
  end
end

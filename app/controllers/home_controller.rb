class HomeController < ApplicationController
  def index
    @preguntas = Pregunta.all
    @denuncia = Denuncia.new
    @denuncia.item_denuncias.build
  end
end

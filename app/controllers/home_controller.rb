class HomeController < ApplicationController
  def index
    @denuncia = Denuncia.new
    @denuncia.item_denuncias.build
  end
end

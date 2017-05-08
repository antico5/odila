module DenunciasHelper
  def boton_siguiente numero
    button_tag 'Siguiente Pregunta', class: 'btn btn-warning siguiente',
      data: { siguiente: numero }
  end
end

module DenunciasHelper
  def boton_siguiente numero
    button_tag 'Siguiente Pregunta', class: 'btn btn-warning siguiente', type: 'button',
      data: { siguiente: numero }, disabled: true
  end

  def boton_saltear numero
    button_tag 'Saltear', class: 'btn btn-primary siguiente', type: 'button',
      data: { siguiente: numero }
  end
end

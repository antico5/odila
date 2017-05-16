module DenunciasHelper
  def boton_anterior numero
    button_tag 'Anterior', class: 'btn btn-primary siguiente', type: 'button',
      data: { siguiente: numero }
  end

  def boton_siguiente numero
    button_tag 'Siguiente', class: 'btn btn-warning siguiente', type: 'button',
      data: { siguiente: numero }, disabled: true
  end

  def boton_saltear numero
    button_tag 'Saltear', class: 'btn btn-primary siguiente pull-right', type: 'button',
      data: { siguiente: numero }
  end
end

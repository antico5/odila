$(document).ready(function(){
  setearEventosFormulario()
})

function setearEventosFormulario() {
  if($('.new_denuncia').size() > 0){
    // Mostrar la primera pregunta
    mostrarPregunta(1)

    // Los botones con clase 'siguiente' llaman a mostrarPregunta con numero en el attribute
    // 'siguiente'
    $('button.siguiente').on('click', function(){
      location.hash = '#Denuncia'
      mostrarPregunta($(this).data('siguiente'))
    })


    // Los inputs con la clase 'opcion' deben habilitar el boton siguiente
    $('.new_denuncia .opcion').on('change', function(){
      $(this).closest('fieldset').find('button').removeAttr('disabled')
    })
  }
}

// Muestra la pregunta con el data attribute 'numero' y esconde las demas.
function mostrarPregunta(numero){
  $('fieldset.pregunta:not([data-numero=' + numero + '])').hide()
  $('fieldset.pregunta[data-numero=' + numero + ']').fadeIn(600)
}


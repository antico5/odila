// Muestra la pregunta con el data attribute 'numero' y esconde las demas.
function mostrarPregunta(numero){
  $('fieldset.pregunta:not([data-numero=' + numero + '])').hide()
  $('fieldset.pregunta[data-numero=' + numero + ']').fadeIn(600)
  location.hash = '#Denuncia'
}

$(document).ready(function(){
  // Mostrar la primera pregunta
  mostrarPregunta(1)

  // Los botones con clase 'siguiente' llaman a mostrarPregunta con numero en el attribute
  // 'siguiente'
  $('button.siguiente').on('click', function(){
    mostrarPregunta($(this).data('siguiente'))
  })


  // Los inputs con la clase 'opcion' deben habilitar el boton siguiente
  $('.new_denuncia .opcion').on('change', function(){
    $(this).closest('fieldset').find('button').removeAttr('disabled')
  })
})

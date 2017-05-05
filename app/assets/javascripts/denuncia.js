// Muestra la pregunta con el data attribute 'numero' y esconde las demas.
function mostrarPregunta(numero){
  $('fieldset.pregunta').show()
  $('fieldset.pregunta:not([data-numero=' + numero + '])').hide()
}

$(document).ready(function(){
  // Mostrar la primera pregunta
  mostrarPregunta(1)

  // Los botones con clase 'siguiente' llaman a mostrarPregunta con numero en el attribute
  // 'siguiente'
  $('button.siguiente').on('click', function(){ mostrarPregunta($(this).data('siguiente')) })
})

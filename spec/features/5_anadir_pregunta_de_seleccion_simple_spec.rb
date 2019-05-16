require 'rails_helper'

RSpec.feature 'Anadir pregunta con opciones simples' do
  scenario 'El administrador agrega una pregunta', js: true do
    visit '/admin'
    short_wait
    fill_in 'admin_user_email', with: 'admin@admin.com'
    short_wait
    fill_in 'admin_user_password', with: 'password'
    short_wait
    click_on 'Iniciar Sesión'
    short_wait

    click_on 'Preguntas'
    short_wait
    click_on 'Añadir Pregunta'
    short_wait

    fill_in 'pregunta_texto', with: 'Ha sufrido usted un daño económico con este incidente?'
    short_wait
    fill_in 'pregunta_descripcion', with: 'En caso de haber visto comprometidos sus bienes personales, o haber recibido un daño económico directa o indirectamente, por favor indíquelo.'
    short_wait
    select 'Radio', from: 'pregunta_tipo'
    short_wait
    fill_in 'pregunta_orden', with: '1'
    short_wait

    click_on 'Create Pregunta'
    long_wait

    within('.header') { click_on 'Opciones' }
    short_wait
    click_on 'Añadir Opcion'
    short_wait

    select 'Ha sufrido usted un daño económico con este incidente?', from: 'opcion_pregunta_id'
    short_wait
    fill_in 'opcion_texto', with: 'No, no he sufrido daño económico.'
    short_wait
    click_on 'Create Opcion'
    medium_wait

    within('.header') { click_on 'Opciones' }
    short_wait
    click_on 'Añadir Opcion'
    short_wait

    select 'Ha sufrido usted un daño económico con este incidente?', from: 'opcion_pregunta_id'
    short_wait
    fill_in 'opcion_texto', with: 'Si, he sufrido daño económico de forma indirecta debido a este incidente'
    short_wait
    click_on 'Create Opcion'
    medium_wait

    within('.header') { click_on 'Opciones' }
    short_wait
    click_on 'Añadir Opcion'
    short_wait

    select 'Ha sufrido usted un daño económico con este incidente?', from: 'opcion_pregunta_id'
    short_wait
    fill_in 'opcion_texto', with: 'Si, he sufrido daño económico directamente relacionado a este hecho'
    short_wait
    click_on 'Create Opcion'
    medium_wait

    visit '/'
    medium_wait

    click_on 'Denunciar'
    short_wait
    select 'Argentina', from: 'denuncia_pais_id'
    short_wait
    click_on 'Siguiente'
    medium_wait

    choose(option: 8)
    short_wait
    click_on 'Siguiente'
    medium_wait

    choose 'No, no he sufrido daño económico.'
    long_wait

  end
end

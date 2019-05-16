require 'rails_helper'

RSpec.feature 'Realizar consulta' do
  scenario 'User visits the index page', js: true do
    visit '/'
    click_on 'Contacto'
    short_wait
    fill_in 'consulta_nombre', with: 'Armando Andini'
    short_wait
    fill_in 'consulta_email', with: 'armando.andini@gmail.com'
    short_wait
    fill_in 'consulta_consulta', with: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
    medium_wait
    click_on 'Enviar'
    long_wait

    visit '/admin'
    medium_wait
    fill_in 'admin_user_email', with: 'admin@admin.com'
    short_wait
    fill_in 'admin_user_password', with: 'password'
    medium_wait
    click_on 'Iniciar Sesión'
    long_wait
    click_on 'Consultas'
    long_wait
    Consulta.last.destroy
  end


  # scenario 'User visits the difusion page', js: true do
  #   visit '/difusion'
  #   expect(page).to have_text('COLABORA CON ESTE PROYECTO')
  #   expect(page).to have_text('Banner 234 x 80')
  #   expect(page).to have_css('pre')
  # end
  # scenario 'User visits the glosario page' do
  #   visit '/glosario'
  #   expect(page).to have_text('Glosario')
  #   expect(page).to have_text('CIBERCRIMEN')
  # end
  # scenario 'User visits the tos page' do
  #   visit '/tos'
  #   expect(page).to have_text('Términos y condiciones')
  #   expect(page).to have_text('Contenidos')
  # end
  # scenario 'User visits the reporte page' do
  #   visit '/reporte'
  #   expect(page).to have_text('Reporte de ODILA 2016')
  #   expect(page).to have_link('descargar', href: /informe_2016/)
  # end
  #
  # scenario 'User visits the reporte-2015 page' do
  #   visit '/reporte-2015'
  #   expect(page).to have_text('Reporte de ODILA 2015')
  #   expect(page).to have_link('descargar', href: /informe_2015/)
  # end
end

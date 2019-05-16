require 'rails_helper'

RSpec.feature 'Realizar consulta' do
  scenario 'El usuario realiza una consulta y luego el admin la ve en el panel', js: true do
    visit '/'
    short_wait
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
  end
end

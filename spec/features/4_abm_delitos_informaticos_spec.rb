require 'rails_helper'

RSpec.feature 'ABM centro de denuncia' do
  scenario 'El administrador agrega un centro de denuncia', js: true do
    visit '/admin'
    short_wait
    fill_in 'admin_user_email', with: 'admin@admin.com'
    short_wait
    fill_in 'admin_user_password', with: 'password'
    short_wait
    click_on 'Iniciar Sesión'
    short_wait

    click_on 'Delitos'
    short_wait
    click_on 'Añadir Delito'
    short_wait
    fill_in 'delito_nombre', with: 'Delito de Ejemplo'
    short_wait

    click_on 'Create Delito'
    long_wait

    click_on 'Legislaciones'
    short_wait
    click_on 'Añadir Legislacion'
    short_wait
    select 'Argentina', from: 'legislacion_pais_id'
    short_wait
    select 'Delito de Ejemplo', from: 'legislacion_delito_id'
    short_wait
    fill_in 'legislacion_numero_ley', with: '15.823'
    short_wait
    fill_in 'legislacion_texto', with: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
    short_wait

    click_on 'Create Legislacion'
    long_wait
  end
end

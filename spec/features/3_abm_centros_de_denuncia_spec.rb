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

    click_on 'Centro De Denuncias'
    short_wait
    click_on 'Añadir Centro De Denuncia'
    short_wait
    select 'Colombia', from: 'centro_de_denuncia_pais_id'
    short_wait
    fill_in 'centro_de_denuncia_direccion', with: 'Cra. 4, Cáqueza, Vda. Centro, Cáqueza, Cundinamarca, Colombia'
    short_wait
    fill_in 'centro_de_denuncia_ciudad', with: 'Bogota'
    short_wait
    fill_in 'centro_de_denuncia_telefonos', with: '283 2394 2938'
    short_wait
    fill_in 'centro_de_denuncia_email', with: 'email@email.com'
    short_wait
    fill_in 'centro_de_denuncia_website', with: 'www.colombia.gov/policia'
    short_wait
    fill_in 'centro_de_denuncia_nombre', with: 'Comisaria 4 de Bogota'
    short_wait

    click_on 'Create Centro de denuncia'
    long_wait
  end
end

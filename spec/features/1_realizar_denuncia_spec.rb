require 'rails_helper'

RSpec.feature 'Realizar denuncia' do
  scenario 'El usuario realiza una denuncia completa', js: true do
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

    choose(option: 1)
    short_wait
    click_on 'Siguiente'
    medium_wait

    select 'January', from: 'denuncia_item_denuncias_attributes_1_fecha_2i'
    short_wait
    click_on 'Siguiente'
    medium_wait

    choose(option: 8)
    short_wait
    click_on 'Siguiente'
    medium_wait

    check(option: 11)
    short_wait
    check(option: 13)
    short_wait
    check(option: 14)
    short_wait
    click_on 'Siguiente'
    medium_wait

    choose(option: 20)
    short_wait
    click_on 'Siguiente'
    medium_wait

    choose(option: 23)
    short_wait
    click_on 'Siguiente'
    medium_wait

    choose(option: 27)
    short_wait
    click_on 'Siguiente'
    medium_wait

    fill_in "denuncia_item_denuncias_attributes_7_observacion", with: 'armando.andini@gmail.com'
    short_wait
    click_on 'Saltear'
    medium_wait

    check(option: 'acepto')
    short_wait
    within '#Denuncia' do
      click_on 'Enviar'
    end

    long_wait

    visit '/admin'
    medium_wait
    fill_in 'admin_user_email', with: 'admin@admin.com'
    short_wait
    fill_in 'admin_user_password', with: 'password'
    short_wait
    click_on 'Iniciar Sesión'
    long_wait
    click_on 'Denuncias'
    medium_wait

    find('#index_table_denuncias').first(:link, "Ver").click
    long_wait
  end
end

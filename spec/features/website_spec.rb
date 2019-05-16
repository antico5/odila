require 'rails_helper'

RSpec.feature 'Website features' do
  scenario 'User visits the index page', js: true do
    visit '/'
    expect(page).to have_text('QUÉ ES ODILA?')
    expect(page).to have_text('DENUNCIAR DELITOS INFORMÁTICOS')
    expect(page).to have_css('form.new_denuncia')
    expect(page).to have_css('form.new_consulta')
  end
  scenario 'User visits the difusion page', js: true do
    visit '/difusion'
    expect(page).to have_text('COLABORA CON ESTE PROYECTO')
    expect(page).to have_text('Banner 234 x 80')
    expect(page).to have_css('pre')
  end
  scenario 'User visits the glosario page' do
    visit '/glosario'
    expect(page).to have_text('Glosario')
    expect(page).to have_text('CIBERCRIMEN')
  end
  scenario 'User visits the tos page' do
    visit '/tos'
    expect(page).to have_text('Términos y condiciones')
    expect(page).to have_text('Contenidos')
  end
  scenario 'User visits the reporte page' do
    visit '/reporte'
    expect(page).to have_text('Reporte de ODILA 2016')
    expect(page).to have_link('descargar', href: /informe_2016/)
  end

  scenario 'User visits the reporte-2015 page' do
    visit '/reporte-2015'
    expect(page).to have_text('Reporte de ODILA 2015')
    expect(page).to have_link('descargar', href: /informe_2015/)
  end
end

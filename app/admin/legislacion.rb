ActiveAdmin.register Legislacion do
  permit_params :pais_id, :delito_id, :numero_ley, :texto

  filter :pais
  filter :delito

  index do
    column :pais
    column 'Delito' do |legislacion|
      legislacion.delito.nombre.truncate 30
    end
    column :numero_ley
    column :texto
    actions
  end

end

ActiveAdmin.register Opcion do
  permit_params :texto, :tiene_observacion, :pregunta_id

  config.sort_order = 'pregunta_id_asc'

  filter :pregunta

  index do
    column :pregunta
    column :texto
    actions
  end
end

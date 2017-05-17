ActiveAdmin.register Pregunta do
  permit_params :texto, :descripcion, :obligatoria, :tipo

  config.sort_order = 'id_asc'
  config.filters = false

  index do
    id_column
    column :texto
    column :descripcion
    column :tipo
    column :obligatoria
    actions
  end
end

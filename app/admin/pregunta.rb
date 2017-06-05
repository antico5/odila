ActiveAdmin.register Pregunta do
  permit_params :texto, :descripcion, :obligatoria, :tipo, :orden

  config.sort_order = 'orden_asc'
  config.filters = false

  index do
    id_column
    column :texto
    column :descripcion
    column :tipo
    column :obligatoria
    column :orden
    actions
  end
end

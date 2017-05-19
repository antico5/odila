ActiveAdmin.register Pais do
  config.filters = false
  config.sort_order = 'nombre_asc'

  permit_params :nombre

  index do
    column :nombre
    actions
  end

end

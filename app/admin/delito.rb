ActiveAdmin.register Delito do
  config.filters = false

  permit_params :nombre

  index do
    column :nombre
    actions
  end

end

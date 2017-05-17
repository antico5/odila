ActiveAdmin.register Consulta do
  config.filters = false

  permit_params :nombre, :email, :consulta

  index do
    column :nombre
    column :email
    column :consulta
    actions
  end

end

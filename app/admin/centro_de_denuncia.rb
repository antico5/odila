ActiveAdmin.register CentroDeDenuncia do
  filter :pais

  permit_params :direccion, :ciudad, :pais_id, :telefonos, :email, :website, :fiscales, :twitter,
    :orden, :nombre

  index do
    column :pais
    column :nombre
    column :direccion
    actions
  end

  show title: :nombre
end

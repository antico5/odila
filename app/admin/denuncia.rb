ActiveAdmin.register Denuncia do
  config.sort_order = 'created_at_desc'

  filter :delito
  filter :pais

  index do
    id_column
    column :pais
    column :delito do |denuncia|
      denuncia.delito.nombre.truncate 30
    end
    column 'Fecha Realizada', :created_at
    actions
  end

  show do
    attributes_table do
      row :delito
      row :pais
      row 'Fecha Realizada' do denuncia.created_at end
      row :ip
    end

    panel 'Respuestas' do
      table_for denuncia.item_denuncias do
        column :pregunta
        column :respuesta
      end
    end
  end

end

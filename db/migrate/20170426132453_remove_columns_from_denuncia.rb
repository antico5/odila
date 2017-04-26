class RemoveColumnsFromDenuncia < ActiveRecord::Migration[5.0]
  def change
    remove_column :denuncias, :tipo_persona
    remove_column :denuncias, :accion_tomada
    remove_column :denuncias, :razon_no_denunciar
    remove_column :denuncias, :rango_edad
    remove_column :denuncias, :genero
    remove_column :denuncias, :educacion
  end
end

class DropUnnecessaryTables < ActiveRecord::Migration[5.0]
  def change
    drop_table :accion_tomadas
    drop_table :causas
    drop_table :generos
    drop_table :instrucciones
    drop_table :rango_edades
  end
end

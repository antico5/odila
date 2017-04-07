class CreateDenuncias < ActiveRecord::Migration[5.0]
  def change
    create_table :denuncias do |t|
      t.date :fecha
      t.integer :tipo_persona
      t.belongs_to :delito
      t.belongs_to :pais
      t.integer :accion_tomada
      t.integer :razon_no_denunciar
      t.integer :rango_edad
      t.integer :genero
      t.integer :educacion

      t.timestamps
    end
  end
end

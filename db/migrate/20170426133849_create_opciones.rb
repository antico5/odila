class CreateOpciones < ActiveRecord::Migration[5.0]
  def change
    create_table :opciones do |t|
      t.text :texto
      t.boolean :tiene_observacion
      t.integer :pregunta_id

      t.timestamps
    end
  end
end

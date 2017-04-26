class CreatePreguntas < ActiveRecord::Migration[5.0]
  def change
    create_table :preguntas do |t|
      t.string :texto
      t.text :descripcion
      t.boolean :obligatoria
      t.integer :tipo

      t.timestamps
    end
  end
end

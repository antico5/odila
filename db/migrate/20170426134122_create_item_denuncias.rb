class CreateItemDenuncias < ActiveRecord::Migration[5.0]
  def change
    create_table :item_denuncias do |t|
      t.integer :denuncia_id
      t.integer :pregunta_id
      t.integer :opcion_id
      t.string :observacion

      t.timestamps
    end
  end
end

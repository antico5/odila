class CreateLegislaciones < ActiveRecord::Migration[5.0]
  def change
    create_table :legislaciones do |t|
      t.belongs_to :pais, foreign_key: true
      t.belongs_to :delito, foreign_key: true
      t.string :numero_ley
      t.string :articulo
      t.text :texto

      t.timestamps
    end
  end
end

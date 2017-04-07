class CreateCentroDeDenuncias < ActiveRecord::Migration[5.0]
  def change
    create_table :centro_de_denuncias do |t|
      t.string :direccion
      t.string :ciudad
      t.belongs_to :pais, foreign_key: true
      t.text :telefonos
      t.string :email
      t.string :website
      t.text :fiscales
      t.string :twitter

      t.timestamps
    end
  end
end

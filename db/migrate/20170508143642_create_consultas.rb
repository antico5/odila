class CreateConsultas < ActiveRecord::Migration[5.0]
  def change
    create_table :consultas do |t|
      t.string :nombre
      t.string :email
      t.text :consulta

      t.timestamps
    end
  end
end

class CreateDelitos < ActiveRecord::Migration[5.0]
  def change
    create_table :delitos do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end

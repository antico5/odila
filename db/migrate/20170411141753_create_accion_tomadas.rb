class CreateAccionTomadas < ActiveRecord::Migration[5.0]
  def change
    create_table :accion_tomadas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end

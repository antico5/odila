class RemoveFechaFromDenuncia < ActiveRecord::Migration[5.0]
  def change
    remove_column :denuncias, :fecha
  end
end

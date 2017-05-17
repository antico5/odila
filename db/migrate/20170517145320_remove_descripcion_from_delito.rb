class RemoveDescripcionFromDelito < ActiveRecord::Migration[5.0]
  def change
    remove_column :delitos, :descripcion
  end
end

class RemoveArticuloFromLegislaciones < ActiveRecord::Migration[5.0]
  def change
    remove_column :legislaciones, :articulo, :string
  end
end

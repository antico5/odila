class RenameCausaNombre < ActiveRecord::Migration[5.0]
  def change
    rename_column :causas, :causa, :nombre
  end
end

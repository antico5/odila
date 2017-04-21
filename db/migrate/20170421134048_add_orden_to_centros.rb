class AddOrdenToCentros < ActiveRecord::Migration[5.0]
  def change
    add_column :centro_de_denuncias, :orden, :integer
  end
end

class AddNombreToCentros < ActiveRecord::Migration[5.0]
  def change
    add_column :centro_de_denuncias, :nombre, :string
  end
end

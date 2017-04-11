class AddIpToDenuncia < ActiveRecord::Migration[5.0]
  def change
    add_column :denuncias, :ip, :string
  end
end

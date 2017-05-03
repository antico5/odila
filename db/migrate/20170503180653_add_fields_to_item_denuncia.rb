class AddFieldsToItemDenuncia < ActiveRecord::Migration[5.0]
  def change
    add_column :item_denuncias, :opciones_multiples, :text
    add_column :item_denuncias, :fecha, :date
  end
end

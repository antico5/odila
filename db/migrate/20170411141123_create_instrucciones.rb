class CreateInstrucciones < ActiveRecord::Migration[5.0]
  def change
    create_table :instrucciones do |t|
      t.string :nombre

      t.timestamps
    end
  end
end

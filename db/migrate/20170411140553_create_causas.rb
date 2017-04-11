class CreateCausas < ActiveRecord::Migration[5.0]
  def change
    create_table :causas do |t|
      t.string :causa

      t.timestamps
    end
  end
end

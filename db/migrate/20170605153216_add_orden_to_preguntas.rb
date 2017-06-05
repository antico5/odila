class AddOrdenToPreguntas < ActiveRecord::Migration[5.0]
  def change
    add_column :preguntas, :orden, :integer
  end
end

class CreateMailTemplates < ActiveRecord::Migration[5.0]
  def change
    create_table :mail_templates do |t|
      t.string :asunto
      t.string :cuerpo

      t.timestamps
    end
  end
end

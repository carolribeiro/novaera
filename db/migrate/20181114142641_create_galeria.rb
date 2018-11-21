class CreateGaleria < ActiveRecord::Migration[5.2]
  def change
    create_table :galeria do |t|
      t.string :foto
      t.string :legenda
      t.string :fotografo
      t.references :usuario, foreign_key: true

      t.timestamps
    end
  end
end

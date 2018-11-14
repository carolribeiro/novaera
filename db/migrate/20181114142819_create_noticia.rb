class CreateNoticia < ActiveRecord::Migration[5.2]
  def change
    create_table :noticia do |t|
      t.string :titulo
      t.string :texto
      t.string :foto
      t.string :fotografo
      t.references :usuario, foreign_key: true

      t.timestamps
    end
  end
end

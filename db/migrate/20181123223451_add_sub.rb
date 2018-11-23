class AddSub < ActiveRecord::Migration[5.2]
  def change
    add_column :noticia, :subtitulo, :string
  end
end

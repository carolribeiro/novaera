class CreateReferenciaAlunos < ActiveRecord::Migration[5.2]
  def change
    create_table :referencia_alunos do |t|
      t.string :nome
      t.string :telefone
      t.string :celular
      t.references :endereco, foreign_key: true

      t.timestamps
    end
  end
end

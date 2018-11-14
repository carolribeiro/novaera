class CreateAlunos < ActiveRecord::Migration[5.2]
  def change
    create_table :alunos do |t|
      t.string :nome
      t.string :rg
      t.string :cpf
      t.date :dtnasc
      t.string :telefone
      t.string :celular
      t.integer :sexo
      t.integer :status
      t.references :referencia_aluno, foreign_key: true
      t.references :endereco, foreign_key: true

      t.timestamps
    end
  end
end

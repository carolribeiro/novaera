class CreateMatriculas < ActiveRecord::Migration[5.2]
  def change
    create_table :matriculas do |t|
      t.references :aluno, foreign_key: true
      t.references :usuario, foreign_key: true
      t.references :turma, foreign_key: true
      t.timestamps
    end
  end
end

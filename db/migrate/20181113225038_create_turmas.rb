class CreateTurmas < ActiveRecord::Migration[5.2]
  def change
    create_table :turmas do |t|
      t.string :nome
      t.references :curso, foreign_key: true

      t.timestamps
    end
  end
end

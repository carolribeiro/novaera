class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.integer :status
      t.integer :tipo

      t.timestamps
    end
  end
end

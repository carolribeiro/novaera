class CreateEnderecos < ActiveRecord::Migration[5.2]
  def change
    create_table :enderecos do |t|
      t.string :cep
      t.string :logradouro
      t.integer :numero
      t.string :complemento
      t.string :bairro
      t.string :cidade

      t.timestamps
    end
  end
end

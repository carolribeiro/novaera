class Aluno < ApplicationRecord
  belongs_to :referencia_aluno
  belongs_to :endereco
  enum sexo: [:masculino, :feminino, :indefinido] 
  enum status: [:cursando, :desistente, :formado, :emespera]
  validates :nome, :rg, :cpf, :dtnasc, :sexo, :status, presence: true
end

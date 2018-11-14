class ReferenciaAluno < ApplicationRecord
  belongs_to :endereco
  has_many :alunos
  validates :nome, presence: true
end

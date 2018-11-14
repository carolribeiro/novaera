class ReferenciaAluno < ApplicationRecord
  belongs_to :endereco
  has_many :alunos
end

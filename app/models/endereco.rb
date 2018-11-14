class Endereco < ApplicationRecord
    has_many :referencia_alunos
    has_many :alunos
end

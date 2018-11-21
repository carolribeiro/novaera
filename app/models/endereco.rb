class Endereco < ApplicationRecord
    validates :cep, :logradouro, :numero, :bairro, :cidade, presence: true
    has_many :referencia_alunos
    has_many :alunos
end

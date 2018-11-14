class Aluno < ApplicationRecord
  belongs_to :referenciaaluno
  belongs_to :endereco
end

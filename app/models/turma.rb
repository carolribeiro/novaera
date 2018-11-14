class Turma < ApplicationRecord
  belongs_to :curso
  validates :nome, presence: true
end

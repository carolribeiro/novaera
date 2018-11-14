class Curso < ApplicationRecord
    has_many :turmas
    validates :nome, presence: true
end

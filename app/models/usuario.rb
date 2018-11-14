class Usuario < ApplicationRecord
    enum status: [:ativo, :inativo]
    enum tipo: [:admin, :monitor, :voluntario]
    has_many :noticias
    has_many :galerias
end

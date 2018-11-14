class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :noticias
    has_many :galerias
    enum status: [:ativo, :inativo]
    enum tipo: [:admin, :monitor, :voluntario]
    validates :nome, :status, :password, :password_confirmation, presence: true
end

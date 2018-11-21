class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :noticias
    has_many :galerias
    enum status: [:ativo, :inativo]
    enum tipo: [:admin, :monitor, :voluntario]
    validates :nome, :status, :tipo, :password, :password_confirmation, presence: true
    VALID_EMAIL = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    validates :email, presence: true, length: { minimum: 5 },
        format: { with: VALID_EMAIL }, uniqueness: true
end

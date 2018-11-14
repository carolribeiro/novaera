class Noticia < ApplicationRecord
  belongs_to :usuario
  mount_uploader :foto, FotoUploader
  validates :titulo, :texto, :foto, presence: true
end

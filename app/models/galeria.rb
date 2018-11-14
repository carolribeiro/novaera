class Galeria < ApplicationRecord
  belongs_to :usuario
  mount_uploader :foto, FotoUploader
  validates :foto, presence: true
end

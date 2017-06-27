class Orden < ApplicationRecord
  belongs_to :usuario
  has_many :ocps
  has_many :comercios, through: :ocps
end

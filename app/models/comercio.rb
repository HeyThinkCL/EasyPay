class Comercio < ApplicationRecord
  has_many :usuario
  has_many :productos
  has_many :ocps
  has_many :ordenes, through: :ocps
end

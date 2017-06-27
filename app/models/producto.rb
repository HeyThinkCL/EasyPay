class Producto < ApplicationRecord
  belongs_to :comercio
  has_many :ocps
end

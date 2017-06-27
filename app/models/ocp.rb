class Ocp < ApplicationRecord
  belongs_to :comercio
  belongs_to :orden
  belongs_to :producto
end

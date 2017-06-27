class Usuario < ApplicationRecord
  # attr_accessor :nombre, :email
  has_many :ordenes
  belongs_to :comercio
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
            format: { with: VALID_EMAIL_REGEX }

end

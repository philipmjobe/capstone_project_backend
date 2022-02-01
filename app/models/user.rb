class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :lists
  has_many :movies, through: :lists
  has_many :lovedits
  has_many :hatedits
end

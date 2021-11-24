class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :watch_lists
  has_many :movies, through: :watch_lists
end

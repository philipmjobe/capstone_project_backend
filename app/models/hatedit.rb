class Hatedit < ApplicationRecord
  belongs_to :movie
  belongs_to :user
  has_many :users, through: :lists
  has_many :movies, through: :movies
end

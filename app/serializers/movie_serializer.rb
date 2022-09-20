class MovieSerializer < ActiveModel::Serializer
  has_many :lists
  has_many :users, through: :lists
  attributes :id, :original_title, :overview, :poster_path
end

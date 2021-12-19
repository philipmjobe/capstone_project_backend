class MovieSerializer < ActiveModel::Serializer
  has_many :lists
  has_many :users, through: :lists
  attributes :id, :name, :description, :box_art, :sub_genre, :year
end

class ListSerializer < ActiveModel::Serializer
  belongs_to :movie
  belongs_to :user
  attributes :id, :movie_id, :watched, :movie
end

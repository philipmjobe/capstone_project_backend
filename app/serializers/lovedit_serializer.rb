class LoveditSerializer < ActiveModel::Serializer
  belongs_to :movie
  belongs_to :user
  attributes :id
end

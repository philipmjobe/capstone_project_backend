class Lovedit < ApplicationRecord
  belongs_to :movie
  belongs_to :user
  after_create :mark_list_as_watched
  
  def mark_list_as_watched
    user.lists.where(movie_id: movie.id).watched!
  end
  
end

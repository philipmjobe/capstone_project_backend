class Movie < ApplicationRecord
  has_many :lists
  has_many :users, through: :lists
  validates :poster_path, :presence => true
  validates :overview, :presence => true

  def self.import
    (1..500).each do |page|
      resp = HTTP.get("https://api.themoviedb.org/3/discover/movie?api_key=e08abd833753bcd6db664b1a6b422a7b&language=en-US&sort_by=release_date.desc&page=#{page}&with_genres=27")

      data = resp.body.to_s
      parsed = JSON.parse(data)
      movies = parsed["results"]

      movies.each do |movie|
        Movie.create(
          original_title: movie['original_title'],
          overview: movie['overview'],
          poster_path: movie['poster_path'],
          tagline: movie['tagline'],
        )
      end
    end
  end
end

class WatchListsController < ApplicationController
  def create
    movie = Watch_list.new(
      name: params[:name],
      description: params[:description],
      box_art: params[:box_art],
      sub_genre: params[:sub_genre],
      year: params[:year]
    )
    if movie.save
      render json: movie
    else
      render json: {errors: movie.errors.full_messages}, status: 406
    end
  end 

  def update
    movie = Movie.find_by(id: params[:id])
    if movie == "watched"
      watched = true
    else
      watched = false
    end 
  end 

end

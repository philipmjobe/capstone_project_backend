class WatchListsController < ApplicationController
  def create
    watch_list = Watch_list.new(
      name: params[:name],
      description: params[:description],
      box_art: params[:box_art],
      sub_genre: params[:sub_genre],
      year: params[:year]
    )
    if watch_list.save
      render json: watch_list
    else
      render json: {errors: watch_list.errors.full_messages}, status: 406
    end
  end 

  def update
    if params[:category]
      category = Category.find_by(name: params[:category])
      movies = category.movies
    else
      movies = Movies.all      
    end 
    render json: movies
  end 

end

class ListsController < ApplicationController
  before_action :authenticate_user
  
  def index
    list = current_user.lists
    render json: list
  end 
  
  def create
    list = List.create(
      user_id: current_user.id,
      movie_id: params[:movie_id],
      watched: false,
      category: params[:category]
    )
    if list.save
      render json: list
    else
      render json: {errors: list.errors.full_messages}, status: 406
    end
  end 

  def update
    list = List.find_by(id: params[:id])
    list.movie_id = params[:movie_id] || list.movie_id
    list.watched = params[:watched] || list.watched
    list.category = params[:category] || list.category 

    if list.save
      render json: list
    else
      render json: {errors: list.errors.full_messages}, status: 406
    end 
  end 
  
  def destroy 
    movie_id = params["id"]
    movie = Movie.find_by(id: movie_id)

    movie.destroy
    render json: {message: "Movie sucessfully destroyed"}
  end 
end

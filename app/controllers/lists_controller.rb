class ListsController < ApplicationController
  before_action :authenticate_user
  
  def index
    # binding.pry
    # lovedits_movie_ids = current_user.lovedits.pluck(:movie_id)
    # hatedits_movie_ids = current_user.hatedits.pluck(:movie_id)
    list = current_user.lists
    render json: list
  end 
  
  def create
    list = List.create(
      user_id: current_user.id,
      movie_id: params[:movie_id],
      watched: false,
    )

    if list.save
      render json: list
    else
      render json: {errors: list.errors.full_messages}, status: 406
    end
  end 


  def update
    list_id = params["id"]
    list = List.find_by(id: params[:id])
    list.movie_id = params[:movie_id] || list.movie_id

    
    if list.watched == true 
      list.save
      render json: lists
    else
      render json: {errors: list.errors.full_messages}.to_json, status: 406
    end 
  end 
  
  def destroy 
    movie_id = params["id"]
    movie = Movie.find_by(id: movie_id)

    movie.destroy
    render json: {message: "Movie sucessfully destroyed"}
  end 
end

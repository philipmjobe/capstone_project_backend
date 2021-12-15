class ListsController < ApplicationController
  def create
    list = List.create(
      user_id: current_user.id,
      movie_id: params[:movie_id],
      watched: params[:watched],
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

end

class ListsController < ApplicationController
  def create
    list = List.new(
      user_id: params[:user_id],
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

  # def update
  #   if params[:category]
  #     category = Category.find_by(name: params[:category])
  #     movies = category.movies
  #   else
  #     movies = Movies.all      
  #   end 
  #   render json: movies
  # end 

end

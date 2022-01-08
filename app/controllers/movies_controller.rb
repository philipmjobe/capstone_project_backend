class MoviesController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]
  def index 
    movie = Movie.all
    render json: movie
  end

  def show
    movie = Movie.find_by(id: params[:id])
    render json: movie
  end 

  def update 
    movie = Movie.find_by(:id params[:id])
    movie.movie_id = params[:movie_id] || movie.movie_id
    movie.watched = params[:watched] || movie.watched
    movie.category = params[:category] || movie.category

    if movie.save
      render json: movie
    else
      render json: {errors: list.errors.full_messages}, status: 406
    end
  end
end

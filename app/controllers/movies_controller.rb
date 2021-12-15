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
end

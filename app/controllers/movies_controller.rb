class MoviesController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]
  def index 
    @movies = Movie.all
    render json: @movies
  end

  def show
    @movies = Movie.find_by(id: params[:id])
    render json: @movies
  end 


end

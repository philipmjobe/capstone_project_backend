class LoveditsController < ApplicationController

  def index 
    lovedit = Lovedit.all 
    render json: lovedit 
  end 

  def show
    movie = Movie.find_by(id: params[:id])
    render json: movie
  end 
  
  def create
    lovedit = Lovedit.create(
      user_id: current_user.id,
      movie_id: params[:movie_id],

    )
    if lovedit.save
      render json: lovedit
    else
      render json: {errors: lovedit.errors.full_messages}, status: 406
    end
  end 
end

class HatedItsController < ApplicationController
  def index 
    hatedit = Hatedit.all 
    render json: hatedit 
  end 

  def show
    movie = Movie.find_by(id: params[:id])
    render json: movie
  end 
  
  def create
    hatedit = Hatedit.create(
      user_id: current_user.id,
      movie_id: params[:movie_id],

    )
    if hatedit.save
      render json: hatedit
    else
      render json: {errors: hatedit.errors.full_messages}, status: 406
    end
  end 
end

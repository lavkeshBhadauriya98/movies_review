class StarCastsController < ApplicationController

  def create
    binding.pry
    @star_cast = Star_Cast.new(star_cast_params)
    if @star_cast.save
      redirect_to root_path
    else
      render :new
    end
  end

  def new
    binding.pry
    @star_cast = StarCast.new
  end
  
  private

  def set movie
    @movie = Movie.find(params[:id])
  end
  def set star_cast
    @star_cast = Star_Cast.find(params[:id])
  end

  def star_cast_params
    params.require(:star_cast).permit(:actor_name, :actresses_name, :gender)
  end

end





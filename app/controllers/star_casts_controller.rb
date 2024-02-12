class StarCastsController < ApplicationController
  before_action :set_star_cast, only: [:create, :show]

  def index
   @star_cast = @movie.star_cast
  end

  def create
    binding.pry
    @star_cast = StarCast.new(star_cast_params)
    if @star_cast.save
      redirect_to  movie_path(@star_cast.movie_id)
    else
      render :new
    end
  end

  def new
    @star_cast = StarCast.new
  end
  
  def show
    @star_cast = StarCast.find(params[:id])
  end
  private

  def set movie
    @movie = Movie.find(params[:id])
  end
  
  def set star_cast
    @star_cast = StarCast.find(params[:id])
  end

  def star_cast_params
    params.require(:star_cast).permit(:actor_name, :actresses_name, :movie_id, :director_id, :link)
  end

end





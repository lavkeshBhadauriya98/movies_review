class MoviesController < ApplicationController
	before_action :set_movie, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!

  def index
  	@movies = Movie.page(params[:page]).per(3)
  end

	def show
		@reviews = @movie.reviews
		@star_cast = @movie.star_casts
	end

	def new
		@movie= Movie.new
	end

	def create
		@movie = Movie.new(movie_params)
    @movie.user_id = current_user.id
	 if @movie.save
	 	redirect_to @movie , notice: 'Movie was successfully created'
	 else
	 	render :new
	 end 
	end
 
	def edit
	end

	def update
		if @movie.user_id == current_user.id
			if @movie.update(movie_params)
				redirect_to @movie, notice: 'Movie was successfully updated'

			else
				render :edit
			end
		else
			flash[:error] = "you are not authorized to perform this action"
		end
	end

  def destroy
  	if @movie.user_id == current_user.id
	  	@movie.destroy
	  	redirect_to movies_url, notice: 'Movie was successfully destroyed'
	  else
	  	flash[:error] = "you are not authorized to perform this action"
	  end
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

	def movie_params
		params.require(:movie).permit(:title, :description, :release_date, :image, :user_id, :director_id)
	end
end

class ReviewsController < ApplicationController
  before_action :set_movie
  before_action :set_review, only: [:edit, :update, :destroy]

	def index
		@review = @movie.reviews
	end

	def new
		@review = @movie.review.new
	end

  def create
		@review = @movie.reviews.new(review_params)
		@review.user_id = current_user.id
		if @review.save
			redirect_to movie_path(@movie), notice: 'Review was successfully created'
		else
			render :new
		end
  end


	def edit
		@movie = Movie.find(params[:movie_id])
		@review =  @movie.reviews.find(params[:id])
	end

	def update
		if @review.update
			redirect_to movie_review_path(@reviews), notice: 'Review was succesfully update'
		else
			render :edit
		end
	end


  def destroy
    @review.destroy

    redirect_to movie_path(@movie), notice: 'Review was successfully deleted.'
  end

  private

	def set_movie
		@movie = Movie.find(params[:movie_id])
	end

	def set_review
		binding.pry
		@review = @movie.reviews.find(params[:id])
	end

	def review_params
		params.require(:review).permit(:rating , :comment, :movie_id, :image)
	end 
end

class DirectorsController < ApplicationController

def create
  @director = Director.new(director_params)
  if @director.save
    redirect_to root_path
  else
    render :new
  end
end

def new
  @director= Director.new
end

def show
  @director= Director.find(params[:id])
end

private

def set_movie
  @movie = Movie.find(params[:id])
end

def set_director
  @director = Director.find(params[:id])
end

def director_params
   params.require(:director).permit(:director_name, :gender)
end

end

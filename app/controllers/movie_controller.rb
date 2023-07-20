class MovieController < ApplicationController
  def index
    @movie = Movie.all
  end

  def create
    @movie = Movie.new(name: params["name"], synopsis: params["synopsis"], director: params["director"])

    if @movie.save
      redirect_to movie_index_path
      else
      render :new
    end
  end
  
  def new
    @movies = Movie.new
  end

end

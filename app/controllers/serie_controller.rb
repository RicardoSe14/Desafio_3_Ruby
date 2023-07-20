class SerieController < ApplicationController
  def index
    @serie = Serie.all
  end

  def create
    @serie = Serie.new(name: params["name"], synopsis: params["synopsis"], director: params["director"])
    
    if @serie.save
      redirect_to serie_index_path
      else
      render :new
    end
  end

  def new
    @serie = Serie.new
  end
  
end

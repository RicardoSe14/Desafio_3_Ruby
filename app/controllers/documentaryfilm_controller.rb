class DocumentaryfilmController < ApplicationController
  def index
    @documentaryfilm = Documentaryfilm.all
  end

  def create
    @documentaryfilm = Documentaryfilm.new(name: params["name"], synopsis: params["synopsis"], director: params["director"])
    
    if @documentaryfilm.save
      redirect_to documentaryfilm_index_path
      else
      render :new
    end
  end

  def new
    @documentaryfilms = Documentaryfilm.new
  end

end

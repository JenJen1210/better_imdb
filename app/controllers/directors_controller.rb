class DirectorsController < ApplicationController


  def index
    @directors = Director.all
  end

  def new
    @director = Director.new
  end

  def show
    @director = Director.find(params[:id])
  end
end

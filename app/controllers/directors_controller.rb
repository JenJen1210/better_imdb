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

  def edit
    @director = Director.find(params[:id])
  end

  def update
    @director = Director.find(params[:id])

    if @director.update(director_params)
      redirect_to directors_path
    else
      render :edit
    end
  end

  def create
    @director = Director.new(director_params)

    if @director.save
      redirect_to directors_path
    else
      render :new
    end
  end

  def destroy
    @director = Director.find(params[:id])
    @director.destroy
    redirect_to directors_path
  end

  private

  def director_params
    params.require(:director).permit(:name, :awards, :douchey)
  end
end

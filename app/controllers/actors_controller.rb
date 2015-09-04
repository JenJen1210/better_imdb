class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end

  def new
    @actor = Actor.new
  end

  def show
    @actor = Actor.find(params[:id])
  end

  def edit
    @actor = Actor.find(params[:id])
  end

  def create
    @actor = Actor.new(actor_params)

    if @actor.save
      redirect_to actors_path
    else
      render :new
    end
  end

  def destroy
    @actor = Movie.find(params[:id])
    @actor.destroy
    redirect_to actors_path
  end

  private

  def actor_params
    params.require(:actor).permit(:name, :age, :will_do_nude_scenes, :movie_id)
  end
end

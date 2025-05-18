class PlanetsController < ApplicationController
  def index
    @planets = Planet.all
    @planet = Planet.new
  end

  def show
    @planet = Planet.find(params[:id])
    @alien = Alien.new
  end

  def create
    @planet = Planet.new(strong_params)
    if @planet.save
      redirect_to @planet, notice: 'Planet was successfully created.'
    else
      @planets = Planet.all
      render 'index', status: :unprocessable_entity
    end
  end

  def destroy
    @planet = Planet.find(params[:id])
    if @planet.destroy
      redirect_to root_path, status: :see_other, notice: 'The planet was successfully deleted'
    else
      redirect_to root_index_path, status: :see_other, notice: 'Unsuccessful delete attempt'
    end
  end

  private

  def strong_params
    params.require(:planet).permit(:name, :description, :size, :alien_count, :rings, :photo)
  end
end

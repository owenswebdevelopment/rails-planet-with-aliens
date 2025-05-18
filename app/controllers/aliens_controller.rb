class AliensController < ApplicationController

  # def new
  #   @alien = Alien.new
  # end

  def create
    @planet = Planet.find(params[:planet_id])
    @alien = Alien.new(alien_params)
    @alien.planet = @planet
    if @alien.save
      redirect_to planet_path(@planet), notice: 'Successfully saved alien'
    else
      render 'planets/show', status: :unprocessable_entity
    end
  end

  private

  def alien_params
    params.require(:alien).permit(:name, :age, :color, :height, :photo)
  end
end

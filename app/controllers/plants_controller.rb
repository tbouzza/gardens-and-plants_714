class PlantsController < ApplicationController

  def new
    @plant = Plant.new
    @garden = Garden.find(params[:garden_id])
  end

  def create
    @plant = Plant.new(plant_params)
    @garden = Garden.find(params[:garden_id])

    @plant.garden = @garden

    if @plant.save
      redirect_to @garden
    else
      render :new
    end
  end

  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy
    redirect_to @plant.garden
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :banner_url)
  end
end

class PlantTagsController < ApplicationController
  def new
    @plant_tag = PlantTag.new
    @plant = Plant.find(params[:plant_id])
  end

  def create
    # 1. initiate an instance of plant tag with data form the form
    @plant_tag = PlantTag.new(plant_tag_params)

    # 2. find the plant
    @plant = Plant.find(params[:plant_id])

    # 3. connect the plant and the plant tag
    @plant_tag.plant = @plant

    # 4. we save the plant tag
    if @plant_tag.save
      redirect_to @plant.garden
    else
      render :new
    end
  end

  private

  def plant_tag_params
    params.require(:plant_tag).permit(:tag_id)
  end
end

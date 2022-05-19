class PlantTagsController < ApplicationController
  def new
    @plant = Plant.find(params[:plant_id])
    @plant_tag = PlantTag.new
  end

  def create
    @tag = Tag.find(params[:plant_tag][:tag_id])
    @plant = Plant.find(params[:plant_id])
    @plant_tag = PlantTag.new(tag: @tag, plant: @plant)
    @plant_tag.save
    redirect_to garden_path(@plant.garden)
  end
end

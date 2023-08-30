class PlantsController < ApplicationController
  require 'httparty'

  def index
    plants = Plant.all

    # if params[:name].present?
    #   plants = plants.where("name ILIKE ?", "%#{params[:name]}%")
    # end

    # if params[:species].present?
    #   plants = plants.where("species ILIKE ?", "%#{params[:species]}%")
    # end

    # if params[:watering_frequency].present?
    #   plants = plants.where(watering_frequency: params[:watering_frequency])
    # end

    render json: plants, status: 200
  end

  def show
    plant = Plant.find(params[:id])
    render json: plant, status: 200
  end

  def create
    plant = Plant.new(plant_params)
    plant.save
  end

  def update
    plant = Plant.find(params[:id])
    plant.update(plant_params)
  end

  def featured
    featured = Plant.where(featured: true)
    render json: featured, status: 200
  end

  private

  def plant_params
    params.require(:plant).permit(:id_trefle, :stock_quantity, :discontinued, :price, :featured, :family, :genus, :scientific_name, :common_name, :eddible, :n_fixer, :image_url)
  end
end

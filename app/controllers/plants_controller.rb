class PlantsController < ApplicationController
  require 'httparty'

  def index
    plants = Plant.all
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

  # def all_plants
  #   response = HTTParty.get(
  #     'https://trefle.io/api/v1/plants',
  #     query: {
  #       # "token": ENV['TREFLE_TOKEN']
  #       "token": 'Cv0vN9QXbnUApDN0YlGKAid97FOTiIoO6PeXdw5lq_8'
  #     }
  #   )
  #   json = response.parsed_response
  #   render json: json
  # end

  # def plant
  #   response = HTTParty.get(
  #     "https://trefle.io/api/v1/plants/#{params[:id]}",
  #     query: {
  #       "token": ENV['TREFLE_TOKEN']
  #     }
  #   )
  #   json = response.parsed_response
  #   render json: json
  # end

  # def featured_plants

  # end


end

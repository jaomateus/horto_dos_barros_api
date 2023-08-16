class PlantsController < ApplicationController
  require 'httparty'

  def all_plants
    response = HTTParty.get(
      'https://trefle.io/api/v1/plants',
      query: {
        # "token": ENV['TREFLE_TOKEN']
        "token": 'Cv0vN9QXbnUApDN0YlGKAid97FOTiIoO6PeXdw5lq_8'
      }
    )
    json = response.parsed_response
    render json: json
  end

  def plant
    response = HTTParty.get(
      "https://trefle.io/api/v1/plants/#{params[:id]}",
      query: {
        "token": ENV['TREFLE_TOKEN']
      }
    )
    json = response.parsed_response
    render json: json
  end

  def featured_plants

  end


end

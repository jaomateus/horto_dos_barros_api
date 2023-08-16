class TokensController < ApplicationController
  require 'httparty'

  def get_client_token
    # The parameters for our POST request
    params = {
      origin: 'http://localhost:3001/plantshop',
      token: 'Cv0vN9QXbnUApDN0YlGKAid97FOTiIoO6PeXdw5lq_8'
    }

    response = HTTParty.post(
      'https://trefle.io/api/auth/claim',
      body: params.to_json,
      headers: { 'Content-Type' => 'application/json' }
    )

    json = JSON.parse(response.body)
    render json: json
  end
end

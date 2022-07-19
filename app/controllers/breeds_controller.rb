class BreedsController < ApplicationController
  def index
    response = HTTP.get("https://api.thedogapi.com/v1/breeds?api_key=API-KEY")
    render json: response.parse(:json)
  end
end

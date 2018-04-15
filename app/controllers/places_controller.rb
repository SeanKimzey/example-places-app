class PlacesController < ApplicationController

  def index
    place = Place.all
    render json: place.as_json
  end

  def create
    place = Place.new(name: "Chicago", address: "Chicago, IL")
    place.save
    render json: place.as_json
  end

end

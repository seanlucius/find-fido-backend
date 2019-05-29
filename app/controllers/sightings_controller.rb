class SightingsController < ApplicationController
  skip_before_action :authorized, only: [:index, :show, :create]

  def index
    render json: Sighting.all
  end

  def show
    render json: Sighting.find(params[:id])
  end

  def create
    render json: Sighting.create(sighting_params)
  end

  def update
    Sighting.find(params[:id]).update(sighting_params)
    render json: Sighting.find(params[:id])
  end

  def destroy
    render json: Sighting.find(params[:id]).destroy()
  end

  def sighting_params
    params.require(:sighting).permit(:user_id, :picture, :latitude, :longitude, :species, :name, :breed, :sex, :age, :color, :defining_features, :description)
  end
end

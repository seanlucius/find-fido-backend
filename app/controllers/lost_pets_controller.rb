class LostPetsController < ApplicationController
  skip_before_action :authorized, only: [:index, :show, :create]

  def index
    render json: LostPet.all
  end

  def show
    render json: LostPet.find(params[:id])
  end

  def create
    render json: LostPet.create(lost_pet_params)
  end

  def update
    LostPet.find(params[:id]).update(lost_pet_params)
    render json: LostPet.find(params[:id])
  end

  def destroy
    render json: LostPet.find(params[:id]).destroy()
  end

  def lost_pet_params
    params.require(:lost_pet).permit(:user_id, :name, :latitude, :longitude, :picture, :species, :breed, :sex, :age, :color, :defining_features, :instructions)
  end
end

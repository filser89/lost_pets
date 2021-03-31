class PetsController < ApplicationController
  before_action :find_pet, only: [:show, :edit, :update, :destroy]
  def index
    @pets = Pet.all
  end

  def show
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.save
    redirect_to pets_path
  end

  def edit

  end

  def update
    if @pet.update(pet_params)
      redirect_to pet_path(@pet)
    else
      render :edit
    end

  end

  def destroy
    @pet.destroy
    redirect_to pets_path
  end

  def destroy_all
    # @pets = Pet.all
    # @pets.destroy_all
    Pet.destroy_all
    redirect_to root_path

  end

  private

  def pet_params
    params.require(:pet).permit(:name, :color, :found_on, :species, :injured)
  end

  def find_pet
    @pet = Pet.find(params[:id])


  end



end

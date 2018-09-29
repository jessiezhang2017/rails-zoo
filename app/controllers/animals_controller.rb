class AnimalsController < ApplicationController
  def index
    @animals = Animal.all.order(:id)
  end

  def show
    id = params[:id].to_i
    @animal = Animal.find_by(id: id)

    if @animal.nil?
     render :notfound, status: :not_found
    end
  end

  def new
    @task = Animal.new
  end

  def create
    @task = Animal.new(animal_params)

    if @animal.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @animal = Animal.find_by(id: params[:id].to_i)
  end

  def update
    @animal = Animal.find_by(id: params[:id].to_i)

    if @animal.update(animal_params)
      redirect_to animal_path
    else
      render
    end
  end

  private
    def animal_params
      return params.require(:animal).permit(:name, :species, :age)
    end
end

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
end

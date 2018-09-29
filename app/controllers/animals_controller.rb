class AnimalsController < ApplicationController
  def index
    @animals = Animal.all.order(:id)
  end
end

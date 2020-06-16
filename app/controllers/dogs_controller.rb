class DogsController < ApplicationController

  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def sort
    @sorted = Dog.sort
  end

end

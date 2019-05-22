class DogsController < ApplicationController
  before_action :find_dog, only: [:show]
  
  def index
    @dogs = Dog.all
  end

  def show
    @employees = Employee.all
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

  def index_by_employee_amount
    @dogs = Dog.all.sort_by {|dog| dog.employees.length}.reverse
  end

  private
  def dog_params
    params.require(:dog).permit(:name, :breed, :age)
  end

  def find_dog
    @dog = Dog.find(params[:id])
  end
end

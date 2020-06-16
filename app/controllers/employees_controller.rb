class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def create

    first_name = params["employee"]["first_name"]
    dog_id = params["employee"]["dog_id"]
    employee = Employee.create(first_name: first_name, dog_id: dog_id)
    redirect_to employee_path(employee)
  end
end

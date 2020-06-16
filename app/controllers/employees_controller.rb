class EmployeesController < ApplicationController
  before_action :find_employee, only: [:show, :create, :edit, :update]

  def index
    @employees = Employee.all
  end

  def show
    @dogs = Dog.all
  end

  def new 
    @employee = Employee.new
    @dogs = Dog.all
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.valid?
      @employee.save
      redirect_to employee_path
    else
      @dogs = Dog.all
      flash[:notice] = @employee.errors.full_messages
      render :new
    end
  end

  def edit
    @dogs = Dog.all
  end

  def update
    @employee.update(empoloyee_params)
    if @employee.valid?
      redirect_to employee_path
    else
      flash[:notice] = @employee.errors.full_messages
      @dogs = Dog.all
      render :edit
    end
  end
  

  def destroy
    Employee.destroy(params[:id])
    redirect_to employees_path
  end

  private
  def empoloyee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id, :img_url)
  end

  def find_employee
    @employee = Employee.find(params[:id])
  end
end

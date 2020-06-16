class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
  end

  def show
    @employee = Employee.find(params[:id])

  end

  def create
    @employee = Employee.new(employee_params)
      if @employee.valid?
        @employee.save
        redirect_to employee_path(@employee)
      else
        flash.now[:notice] = "#{@employee.errors.messages.first[0]} "+"#{@employee.errors.messages.first[1][0]}"
        render :new
      end
    end

    def edit
      @employee = Employee.find(params[:id])
    end

    def update
      @employee = Employee.find(params[:id])
        if @employee.update(employee_params)
          redirect_to employee_path(@employee)
        else
          flash.now[:notice] = "#{@employee.errors.messages.first[0]} "+"#{@employee.errors.messages.first[1][0]}"
          render :edit
        end
      end

private

  def employee_params(*args)
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
  end


end

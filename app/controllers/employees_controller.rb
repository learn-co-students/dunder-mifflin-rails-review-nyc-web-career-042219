class EmployeesController < ApplicationController

    def index
        @employees = Employee.all
    end

    def show
        @employee = Employee.find(params[:id])
        @dog = Employee.find_dog(@employee)
    end

    def new
        @employee = Employee.new
    end

    def create
        @employee = Employee.create(employee_params)
        if @employee.valid?
            @employee.save
          redirect_to employee_path(@employee)
        else
          flash[:alias] = @employee.errors.messages[:alias][0]
          flash[:title] = @employee.errors.messages[:title][0]
          render :new
        end
    end

    def edit
       @employee = Employee.find(params[:id])
    end

    def update
        @employee = Employee.find(params[:id])
        @employee.update(employee_params)
        redirect_to @employee
    end


    private
    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id)
    end

end

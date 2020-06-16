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
		@employee = Employee.new(employee_params)
		if @employee.valid?
			@employee.save
			redirect_to employee_path(@employee)
		else
			flash[:notice] = @employee.errors.full_messages[0]
			redirect_to new_employee_path
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
			flash[:notice] = @employee.error.full_messages
			redirect_to edit_employee_path
		end
	end

	def destroy
		@employee = Employee.find(params[:id])
		@employee.delete
		redirect_to employees_path
	end

	private

	def employee_params
		params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id)
	end
end

class DogsController < ApplicationController

	def index
		@dogs = Dog.all
	end

	def show
		@dog = Dog.find(params[:id])
	end

	def new
		@dog = Dog.new
	end

	def create
		@dog = Dog.new(dog_params)
		if @dog.valid?
			@dog.save
			redirect_to dog_path(@dog)
		else
			flash[:notice] = @dog.errors.full_messages
			redirect_to new_dog_path
		end
	end

	def edit
		@dog = Dog.find(params[:id])
	end

	def update
		@dog = Dog.find(params[:id])
		if @dog.update(dog_params)
			redirect_to dog_path(@dog)
		else
			flash[:notice] = @dog.errors.full_messages
			redirect_to edit_dog_path
		end
	end

	def destroy
		@dog = Dog.find(params[:id])
		@dog.delete
		redirect_to dogs_path
	end

	private

	def dog_params
		params.require(:dog).permit(:name, :breed, :age)
	end


end

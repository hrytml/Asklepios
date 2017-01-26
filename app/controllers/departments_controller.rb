class DepartmentsController < ApplicationController
	def liste
		@doctors = Doctor.all
		
		render
	end

	def list
		@departments = Department.all

		render
	end

	def new	
		@department = Department.new
		render "create"
	end


	def create
    	@department = Department.new(department_params)
    	if @department.save
    		redirect_to departments_path
    	else
    		render 
    	end
	end


	private
	def department_params
		params.require(:department).permit(:name)
	end



end





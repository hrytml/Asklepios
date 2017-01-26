class DoctorsController < ApplicationController
	def liste
		@doctors = Doctor.all
		
		render
	end

	def list
		@doctors = Doctor.all

		render
	end

	def new	
		@doctor = Doctor.new
		render "create"
	end


	def create
    	@doctor = Doctor.new(doctor_params)
    	if @doctor.save
    		redirect_to doctors_path
    	else
    		render 
    	end
	end


	private
	def doctor_params
		params.require(:doctor).permit(:name, :surname, :department_id)
	end



end





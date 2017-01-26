class AppointmentsController < ApplicationController

	def list

		@appointments = Appointment.all
	
		render 
	end


	
end

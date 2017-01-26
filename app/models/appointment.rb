class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient


  # def time

  # 	start_time.strftime("%H:%M")
  # end

  def time_diff
  	if start_time < DateTime.now
  		return "Randevunuz geçmiş."
  	else 
      return (start_time.to_i - DateTime.now.to_i)/86400
  	end
  end


end



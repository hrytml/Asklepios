class Doctor < ApplicationRecord
	belongs_to :department
	has_many :appointments
	has_many :patients, through: :appointments



	def full_name

		"#{name} #{surname}"
	end
end

require '/building.rb'
require '/elevator.rb'
require '/floor.rb'

class Passenger
	attr_reader :initial_floor, :num_floor, :boarded
	def intialize(initial_floor, num_floor)
		@initial_floor = initial_floor
		@desig_floor = where_to(num_floor)
		@boarded = false
	end

	def assign_pass_to_floor

	end

	#method to assign the passengers their desired floor
	def where_to(num_floor)
		@desig_floor = @initial_floor
		while @desig_floor = @initial_floor
			@desig_floor = rand(1..num_floor)
		end
	end

	def passenger_destination
		return @desig_floor
	end

	def to_s
		"This passenger started at #{@initial_floor} and wants to go to #{@desig_floor}"
	end
end
# Right now, I made it so that a building can only contain one elevator. 

require './elevator.rb'
require './floor.rb'
require './passenger.rb'

class Building
	attr_reader :num_floor, :num_pass, :full_pass_list, :building_specs, :max_cap, :curr_cap, :curr_floor, :elevator1
	def initialize(num_floor, max_cap, num_pass)
		@num_floor = num_floor
		@num_pass = num_pass
		@pass_array = Array.new
		@floor_list = Hash.new #Key = Floor and contains an array of passengers
	end
 	
	def create_floor(num_floor)
		levels = 0
		while levels < num_floor
			@floor_list[levels] = Floor.new(levels)
			levels += 1
		end
	end

	def create_elevator(max_cap, num_floor)
		@max_cap = max_cap
		@curr_cap = 0
		@curr_floor = 0
		@num_floor = num_floor
		return Elevator.new(max_cap, num_floor)
	end

	#This creates passengers and assigns the passengers to initial floors.
	#It also pushes the passenger to the @pass_array
	def create_passenger
		x = Random.new
		total_people_assigned = 0
		while total_people_assigned < num_pass
			passenger_floor = x.rand(num_floor)+1
			person = Passenger.new(passenger_floor, num_floor)
			total_people_assigned += 1
		end
	end

	def to_s
		puts "There are #{num_floor} floors in this building, and #{num_pass} people in the building."
	end

end


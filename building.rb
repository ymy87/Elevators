# Right now, I made it so that a building can only contain one elevator. 

require '/elevator.rb'
require '/floor.rb'
require '/passenger.rb'

class Building
	attr_reader :num_floor, :num_pass, :full_pass_list, :building_specs, :max_cap, :curr_cap, :curr_floor
	def initialize(num_floor, max_cap, num_pass)
		@num_floor = num_floor
		@num_pass = num_pass
		create_floor(num_floor)
		create_elevator(max_cap)

		@full_pass_list = Hash.new #Key = original floor data=[desig_floor, satisfied]
		@floor_list = Hash.new #Key = Floor and contains an array of [num_elevator, num_flPeople and their designated floor
	end
 	
	def create_floor(num_floor, waiting_list)
		levels = 1
		while levels != num_floor do |level|
			@floor_list[level] = Floor.new(num_elevator, num_floor, level)
			@building_specs.push(Floor.new(level, [0, 0]))
			levels += 1
		end
	end

	def create_elevator(max_cap)
			@max_cap = max_cap
			@curr_cap = 0
			@curr_floor = 0

		end
	end

	def create_passengers
		x = Random.new
		total_people_assigned = 0
		while total_people_assigned != num_pass
			passenger_floor = x.rand(num_floor)+1
			@full_pass_list[passenger_floor] = Passenger.new(passenger_floor, num_floor)
			total_people_assigned += 1
		end
	end

	def to_s
		puts "There are #{num_floor} floors in this building, and #{num_pass} of people in the building."
	end

end


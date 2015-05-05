require './building.rb'
require './floor.rb'
require './elevator.rb'
require './passenger'


class Simulation
	attr_reader :iteration, :num_floors, :max_cap, :num_pass
	def initialize(num_floors, max_cap, num_pass)
		@iteration = 0
		@max_cap = max_cap
		@building = Building.new(num_floors, max_cap, num_pass)
		@num_floors = num_floors
		@num_pass = num_pass
	end


	def run(n)
		@building.create_floor(num_floors)
		@building.create_elevator(max_cap, num_floors)
		@building.create_passenger
		@building.to_s
		while n > 0
			n -= 1
		end
	end

	def iterate
		@iteration -= 1
	end

end

simulation = Simulation.new(2, 4, 2)
simulation.run(5)

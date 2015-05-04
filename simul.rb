require '/.building.rb'
require '/.floor.rb'
require '/.elevator.rb'
require '/.passenger'


class Simulation
	attr_reader :iteration, :num_floors, :max_cap, :num_pass
	def initialize(num_floors, max_cap, num_pass)
		@iteration = 0
		@max_cap = max_cap
		@building = Building.new(num_floors, max_cap)
	end


	def run(n)
		@building.create_floor
		@building.create_elevator
		@building.create_passenger
		@building.to_s
		while n > 0
			@building.
			n -= 1
	end

	def iterate
		@iteration -= 1
	end

end

simulation = Simulation.new(2, 4, 2)
simulation.run(5)

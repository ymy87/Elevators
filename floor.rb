require '/.building.rb'
require '/.passenger.rb'
require '/.elevator.rb'

class Floor
	attr_reader :floor_num, :waiting_list
	def initialize(floor_num, waiting_list)
		@floor_num = floor_num
		@waiting_list = Array.new
	end

	def get_floor

end
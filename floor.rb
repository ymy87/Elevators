require './building.rb'
require './passenger.rb'
require './elevator.rb'

class Floor
	attr_reader :num_floor, :floor_num, :waiting_list, :curr_floor
	def initialize(floor_num)
		@floor_num = floor_num
		@waiting_list = Array.new
	end


	def get_floor
		return @curr_floor
	end

	def stop_elevator

	end

end
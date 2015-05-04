class Elevator
	attr_reader :direction, :max_cap, :curr_cap, :curr_floor, :pass_list, :num_floor
	def initialize(max_cap, num_floor)
		@direction = 1 #Up if positive, down when negative
		@max_cap = max_cap
		@curr_cap = 0
		@curr_floor = 1
		@max_floor = num_floor
		@pass_list = Array.new
	end

	def get_direction
		return @direction
	end

	def move
		@curr_floor += @direction
		pause_to_load(passenger)
	end

	def change_dir
		@direction *= -1
	end

	def pause_to_load(pass_list)
		load_pass(passenger)
	end

	def load_pass(pass_list)
		if @curr_cap = @max_cap
			return "Sorry, the elevator is full."
		else
			pass_list.push(passenger)
			curr_cap = curr_cap +1
		end
	end

	def unload_pass
		pass_list.each do |person|
			if person.desig_floor = curr_floor
				pass_list.delete(person)
				curr_cap -= 1
				"#{person} left the elevator satisfied"
			end
		end
	end

	def get_curr_cap
		return @curr_cap
	end

	def get_curr_floor
		return @curr_floor
	end

end





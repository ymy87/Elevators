class Elevator
	attr_reader :direction, :max_cap, :curr_cap, :curr_floor, :pass_list
	def initialize(max_cap)
		@direction = 1 #Up if positive, down when negative
		@max_cap = max_cap
		@curr_cap = 0
		@curr_floor = 1
		@pass_list = Array.new
	endd

	def get_direction
		return @direction
	end

	def move
		if @curr_floor += @direction
	end

	def change_dir
		@direction *= -1
	end

	def load_pass(passenger)
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

	def to_s
		puts "ID: " + (self.__id__.to_i % 1000).to_s + " elevator is leaving floor " + (@current_floor).to_s + " with " + @current_load.to_s + " people on board"
	end

end





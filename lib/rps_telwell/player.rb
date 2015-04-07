# Create a new player, this will be the
# human-interaction portion.
class Player
	# Instead of this could have another method 
	# which just increments wins
	attr_accessor :wins
	
	# Initialize, get number of wins
	def initialize
		@wins = 0
	end

	# Validate move
	def valid_move?(move)
		# Make sure input is an integer
		if move.class == Fixnum

			# Make sure move is 1-3
			if (1..3).to_a.include?(move)
				true
			else
				false
			end
		else
			false
		end
	end
end

# Create Human player
class Human < Player
	# Human version of get_move
	def get_move
		error_message = nil
		loop do
			puts error_message || "Select your move:"
			move = gets.chomp.to_i
			if valid_move?(move)
				return move
				break
			else
				error_message = "Invalid input, please enter a number 1-3"
				redo
			end
		end
	end
end

# Create a new computer player.
class Computer < Player
	# Computer version of get_move
	def get_move
		rand(1..3)
	end
end
# Controls the overall game
class RockPaperScissors
	# Set initial variables
	def initialize
		@player_1 = Human.new
		@player_2 = Computer.new
		@board = Board.new
		# Could use a constant (or @@class variable) for this
		@moves = ["rock","paper","scissors"]
	end

	# Start the game!
	def start
		# Begin the loop
		loop do
			# Display board
			@board.render(@player_1.wins, @player_2.wins)

			# Get player_1 selection
			@player_1_move = @player_1.get_move

			# Get player_2 selection
			@player_2_move = @player_2.get_move

			# Who won? Returns 1 for player 1, 2 for player 2, or nil for a draw
			@winner = get_winner(@player_1_move,@player_2_move)

			# Output winner
			output_winner

			# What next?
			puts "What next? 1 to play again, 2 to quit"
			input = gets.chomp.to_i
			break if input == 2
		end
	end

	# Output winner
	def output_winner
		if @winner.nil?
			puts "We had a draw! #{@moves[@player_1_move-1]} ties #{@moves[@player_2_move-1]}"
		elsif @winner == 1
			puts "Player 1 wins! #{@moves[@player_1_move-1]} beats #{@moves[@player_2_move-1]}"
			@player_1.wins=(@player_1.wins+1)
		else
			puts "Player 2 wins! #{@moves[@player_2_move-1]} beats #{@moves[@player_1_move-1]}"
			@player_2.wins=(@player_2.wins+1)
		end
	end

	# Get winner
	def get_winner(player_1_move, player_2_move)
		moves = [player_1_move,player_2_move]
		# This means we have a draw
		if moves[0] == moves[1]
			nil
		# Scenario for P1 rock	
		elsif moves[0] == 1
			return 1 if moves[1] == 3
			return 2
		# Scenario for P1 paper
		elsif moves[0] == 2
			return 1 if moves[1] == 1
			return 2
		# Scenario for P1 scissors
		elsif moves[0] == 3
			return 1 if moves[1] == 2
			return 2
		end
	end
end
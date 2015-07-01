=begin
1. play method executes the game
 - cmd line interaction
=end
module RPSGame

	class Game
		def play
			puts "Enter your choice Rock(r), Paper(p), Scissors(s): "
			choice = gets.chomp
			unless validate?(choice)
				self.play
			end
			winner(choice)
		end

		def validate?(choice)
			["r", "p", "s"].include?(choice[0].downcase)
		end

		def winner(choice)
			player2_choice = ["r", "p", "s"].sample
			puts "Player 2 chooses #{player2_choice}"

			if choice == player2_choice
				puts "It's a tie!"
			elsif choice == "r" && player2_choice == "p"
				puts "Player 2 wins"
			elsif choice == "r" && player2_choice == "s"
				puts "Player 1 wins"
			elsif choice == "p" && player2_choice == "s"
				puts "Player 2 wins"
			elsif choice == "p" && player2_choice == "r"
				puts "Player 1 wins"
			elsif choice == "s" && player2_choice == "p"
				puts "Player 1 wins"
			elsif choice == "s" && player2_choice == "r"
				puts "Player 2 wins"
			end
		end

	end

end
# Controls the "board" for the game
# In RPS there isn't much board so this
# will control the output.
class Board
	# Clear board
	def clear
		system "clear"
	end

	# Render
	def render(player_1_wins= 0,player_2_wins=0)
		output = "
ROCK PAPER SCISSORS
-------------------
You know how to play!
Enter: 
1 for rock, 
2 for paper, or 
3 for scissors. Good luck!

SCORE
--------------------
Player 1: #{player_1_wins}
Player 2: #{player_2_wins}\n"
		clear
		print output
	end
end
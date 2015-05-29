require "rockpaperkinson/version"
require "rockpaperkinson/rock_paper_scissors"
require "rockpaperkinson/player"

module Rockpaperkinson

  def self.new_game
    r = RockPaperScissors.new
    r.play
  end

end

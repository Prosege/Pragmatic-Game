require_relative 'player'
require_relative 'die'
require_relative 'treasure_trove'
#require_relative 'loaded_die'

module GameTurn
	 def self.takeTurn(player)
	# 	def self.take_turn(player)
 #    	die = LoadedDie.new

		die = Die.new()
			
		case die.num
		when 1..2
			puts player.blam
		when 3..4
			puts "#{player.pname} was skipped."
		else
			puts player.woot
		end

		treasure = TreasureTrove.random
  		player.found_treasure(treasure)
	end
end
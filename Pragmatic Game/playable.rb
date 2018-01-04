module Playable

	def blam()
		@health -= 10
 		"#{@pname} got blammed!"
	end

	def woot()
		@health += 15
		"#{@pname} got wooted!"
	end

	def strong()
		@health > 100
	end
end
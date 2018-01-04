require_relative 'player'
require_relative 'game'
require_relative 'clumsy_player'
require_relative 'berserk_player'

p1 = Player.new("larry", 150)
p2 = Player.new("curly", 115)
p3 = Player.new("moe", 140)
p4 = Player.new("shemp", 150)
p5 = Player.new("george", 170)
p6 = Player.new("greg", 145)
p7 = Player.new("mike", 100)
p8 = Player.new("Tim", 135)

knuckleheads = Game.new("Knuckleheads")
knuckleheads.load_players(ARGV.shift || "players.csv")

klutz = ClumsyPlayer.new("klutz", 105)
knuckleheads.addPlayer(klutz)

berserker = BerserkPlayer.new("berserker", 50)
knuckleheads.addPlayer(berserker)

# knuckleheads.addPlayer(p1)
# knuckleheads.addPlayer(p2)
# knuckleheads.addPlayer(p3)
# knuckleheads.addPlayer(p4)
# knuckleheads.addPlayer(p5)
# knuckleheads.addPlayer(p6)
# knuckleheads.addPlayer(p7)
# knuckleheads.addPlayer(p8)

loop do
  puts "\nHow many game rounds? ('quit' to exit)"
  answer = gets.chomp.downcase

  case answer
  when /^\d+$/
    knuckleheads.play(answer.to_i)
  when 'quit', 'exit'
    knuckleheads.print_stats
    break
  else
    puts "Please enter a number or 'quit'"
  end
end

knuckleheads.print_stats
knuckleheads.save_high_scores


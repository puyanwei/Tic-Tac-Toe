def load
  require './lib/board'
  require './lib/game'
end

game = Game.new
game.start("bob", "mike")

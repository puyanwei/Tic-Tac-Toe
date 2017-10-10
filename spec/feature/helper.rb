require './lib/game'
# require './lib/board'
game = Game.new
game.start("bob", "mike")
game.play(4)
game.play(5)
game.play(7)
game.play(3)
game.play(8)
game.board

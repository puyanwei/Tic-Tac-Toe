# Tic Tac Toe
This is the famous 2 player game Tic Tac Toe, also known as Naughts and Crosses. Get three of your chosen symbol in a line to win.

## Tech Stack
- Ruby
- RSpec
- SimpleCov
- Flog
- Rubocop

## Installation
Use the terminal to clone this repo by typing in
`git clone git@github.com:pyan83/tic-tac-toe-revisited.git`

Install the relevant gems by typing in `bundle install`.
Then `cd tic-tac-toe-revisited` to go to the root folder.

Type `pry` to enter the sandbox and type in `'require ./bin/load`, and then write `load`.
Alternatively you can choose to use `irb` instead of `pry`.

```ruby
require './bin/load'
=> true
load
=> true
```
To see the tests type in `rspec` in the project folder.
## Features

- Create a new game.
```ruby
game = Game.new
 ```
- Start the game by entering your names.
```ruby
game.start("Bob", "Mike")
 ```
- Play by choosing a position on the board.

```ruby
game.play(2)
```
- Game is over when someone wins or there are no moves left.

## Quality control
The aim of this exercise was to write high quality code.

This is achieved my for filling the following criteria;
- All tests are passing.
- Rubocop linter passes.
- 95% or above test coverage.
- Commits are regular, small and have good descriptions.
- Flog score is low, which means methods have one responsibility and classes are small.

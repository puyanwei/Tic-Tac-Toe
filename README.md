# Tic Tac Toe
This is the famous 2 player game Tic Tac Toe, also known as Naughts and Crosses.

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
 ```ruby
bank.open_account(account)
=> [#<Account:0x007ff3c11640d8
  @balance=0,
  @transaction_history=[]>]
```
- Makes a deposit.
```ruby
account.make_deposit("08/14/17", 5000)
=> [#<Deposit:0x007ff3c132d7e8
  @balance=5000,
  @credit=5000,
  @date="08/14/17",
  @debit=0>]
```
- Makes a withdrawal.
```ruby
account.make_withdrawal("09/14/17", 3500)
=> [#<Withdrawal:0x007ff3c133cc70
  @balance=1500,
  @credit=3500,
  @date="09/14/17",
  @debit=0>
  ```
- Throws an error if there are insufficient funds to withdrawal.
```ruby
account.make_withdrawal(10/14/17, 2000)
RuntimeError: insufficient funds
```
- Balance checking.
```ruby
account.balance
=> 1500
```
- Print out their complete transaction history.
```ruby
account.print_history
date || credit || debit || balance
09/14/17 || 0 || 3500 || 1500
08/14/17 || 5000 || 0 || 5000
```
## Quality control
The aim of this exercise was to write high quality code.

This is achieved my for filling the following criteria;
- All tests are passing.
- Rubocop linter passes.
- 95% or above test coverage.
- Commits are regular, small and have good descriptions.
- Flog score is low, which means methods have one responsibility and classes are small.

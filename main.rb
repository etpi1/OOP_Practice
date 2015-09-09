require './Player'
require './Question'
require './Game'

puts "What's your name Player 1?"
player1name = gets.chomp
puts "What's your name Player 2?"
player2name = gets.chomp
player1 = Player.new(player1name)
player2 = Player.new(player2name)

game = Game.new(player1, player2)


game.play


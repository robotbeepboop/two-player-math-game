# three lives each to start
# players take turns to answer
# new question is generated with two nums from 1-20
# question is prompted
# if player answers wrong, they lose a life
# output new scores after each round
# game keeps going till someone loses all their lives
# game announces score and who won

#nouns: score, player, question, game turn
#class will make instances of players, game, question, turn to be edited throughout the game
#player: score is relevant, methods- answer, is answer true or false
#score: player is relevant, methods- update player score
#game: loop until player wins

require "./Player"
require "./Question"
require "./Game"

game = Game.new
game.game_start

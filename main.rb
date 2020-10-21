require_relative 'lib/board.rb'
require_relative 'lib/knight.rb'
require_relative 'lib/node.rb'

board = Board.new
board.knight_moves([0,0],[4,3])

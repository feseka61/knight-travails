class Knight
  def moves_from(coords)
    dx = [1, 1, 2, 2, -1, -1, -2, -2]
    dy = [2, -2, 1, -1, 2, -2, 1, -2]
    moves = []

    8.times do |i|
      temp = [coords[0] + dx[i], coords[1] + dy[i]]
      moves << temp
    end
    
    moves.reject! { |move| move.any? { |c| c < 0 || c > 7 } }
    moves
  end
end

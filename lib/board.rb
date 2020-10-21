class Board
  def initialize
    @knight = Knight.new
  end

  def knight_moves(start, finish)
    puts 'Starting point not in board' unless coords_in_board?(start)
    puts 'Finishin point not in board' unless coords_in_board?(finish)

    start = Node.new(start)
    
    visited = []
    queue = Queue.new
    queue << start
    path = []

    until queue.empty?
      current = queue.shift
      visited << current

      if current.coords == finish
        path = make_path(start, current)
        puts "You made it in #{path.length - 1} moves!"
        p path
        return
      end

      next_moves = @knight.moves_from(current.coords)
      next_moves.each do |move|
        move = Node.new(move, current)
        queue << move unless visited.include?(move)
      end
    end
  end

  def make_path(start, node)
    path = []
    current = node
    while current.parent
      path.unshift(current.coords)
      current = current.parent
    end
    path.unshift(start.coords)
    path
  end

  def coords_in_board?(coords)
    if coords.any? { |coord| coord < 0 || coord > 7}
      return false
    else
      return true
    end
  end
end
7

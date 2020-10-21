class Node
  attr_accessor :coords, :parent

  def initialize(coords, parent = nil)
    @coords = coords
    @parent = parent
  end
end

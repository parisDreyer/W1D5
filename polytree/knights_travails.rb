require_relative "./lib/00_tree_node"

class KnightPathFinder
  def initialize(initial_position = [0,0])
    @root_node = PolyTreeNode(initial_position)
    @visited_positions = [initial_position]
  end
  
  def build_move_tree
    
  end 
  
  def self.valid_moves(pos)
    
  end
  
  def already_visited?(pos)
    if @visited_positions.include?(pos)
      true
    else
      false 
    end
  end
  
  def board_positions
    (0..7).each {|i| }
  end
  
  def new_move_positions(pos)
    # @valid_moves = 
    KnightPathFinder.valid_moves(pos)
  end
  
end
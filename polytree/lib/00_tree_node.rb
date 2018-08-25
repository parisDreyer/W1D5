class PolyTreeNode
  
  def initialize(value, parent = nil, children = [])
    @value = value
    @parent = parent # instance variables AKA properties
    unless parent.nil?
      @parent.children.push(self) unless @parent.children.include?(self)
    end
    @children = children
    
  end
  
  def parent=(other_node)
    if @parent 
      @parent.children.delete(self) 
    end
    @parent = other_node
    if @parent != nil
      @parent.children.push(self) unless @parent.children.include?(self)
    end
  end
  
  def parent 
    @parent
  end 
  
  def children 
    @children
  end 
  
  def value
    @value
  end 
  
  def add_child(child_node)
    child_node.parent = self 
  end
  
  def remove_child(child_node)
    if children.include?(child_node) 
      child_node.parent = nil
    else
      raise "Not a child of this tree node."
    end
  end
  
  def dfs(target_value)
    return self if self.value == target_value
    children.each do |node|
      returned_node = node.dfs(target_value)
      if returned_node 
        return returned_node if target_value == returned_node.value
      end
    end
    nil
  end
  
  def bfs(target_value)
    queue = [self]
    until queue.empty?
      nxt_node = queue.shift
      if nxt_node.value == target_value 
        return nxt_node
      else
        nxt_node.children.each { |child| queue.push(child) }
      end
    end
  end
  
end
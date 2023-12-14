require_relative 'knight'

class Graph

    attr_accessor :edges, :que, :visited, :knight

  def initialize
    
  end

  def knight_moves(start, destination)
    que = [Knight.new(start)]
    current = que.shift
    
    until current.position == destination
      current.legal_moves.each do |move|
        child = Knight.new(move)
        child.parent = current
        current.children.append(child)
        que.append(child)
      end
      current = que.shift
    end


    return get_history(current)
  end

  def get_history(node, output = [])
    if node.parent.nil?
      output.push(node.position)
      return output.reverse
    else
      output.push(node.position)
      get_history(node.parent, output)
    end
  end

  


end

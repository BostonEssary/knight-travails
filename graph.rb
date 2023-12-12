require_relative 'knight'

class Graph

    attr_accessor :edges, :que, :visited, :knight

  def initialize
    
  end

  def knight_moves(start, destination)
    que = [Knight.new(start)]
    current = que.shift
    
    until current == destination
      current.legal_moves.each do |move|
        current.children.append(move)
        que.append(move)
      end
    end


    return moves
  end

  


end

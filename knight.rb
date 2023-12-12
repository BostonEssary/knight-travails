class Knight

    MOVES = [[2, 1], [2, -1], [-2, 1], [-2, -1], [1, -2], [1, 2], [-1, -2], [-1, 2]]

    attr_accessor :position, :visited

    def initialize(position, parent = nil)
        @position = position
        @parent = parent
        @children = []
    end 


    def legal_moves
        legal_moves = []
        MOVES.each do |move|
            if self.position[0] + move[0] < 0 || self.position[0] + move[0] > 7
                next
            elsif self.position[1] + move[1] < 0 || self.position[1] + move[1] > 7
                next
            else
                x = self.position[0] + move[0]
                y = self.position[1] + move[1]
                legal_moves.push([x, y])
            end
        end
        return legal_moves
    end

end
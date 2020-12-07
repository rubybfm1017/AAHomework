class GraphNode
    attr_accessor :val, :neighbors

    def initialize(val)
        self.val = val
        self.neighbors = []
    end

    def add_neighbors(neighbors)
        self.neighbors << neighbors
    end

    a = GraphNode.new('a')
    b = GraphNode.new('b')
    c = GraphNode.new('c')
    d = GraphNode.new('d')
    e = GraphNode.new('e')
    f = GraphNode.new('f')
    a.neighbors = [b, c, e]
    c.neighbors = [b, d]
    e.neighbors = [a]
    f.neighbors = [e]


    def bfs(starting_node, target_value)
        queue = [starting_node]
        until queue.empty?
            child = queue.shift
            return child if child.val == target_value
            child.children.each do |ele|
                queue << ele
            end
        end
        nil
    end
    
end

p bfs(a,"b")
class GraphNode
    attr_reader :value, :neighbors
    def initialize(value)
        @value = value
        @neighbors = []
    end

    def bfs(starting_node, target_value)
        my_queue = [starting_node]
        finished = Set.new()

        until my_queue.empty?
            s = my_queue.shift
            if !finished.include?(s)
                return s.value if s.value == target_value
                finished.add(s)
                my_queue.concat(starting_node.neighbors)
            end
        end
        nil
    end

    def add_neighbors(array)
        @neighbors += array
    end

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

p bfs(a, "b")


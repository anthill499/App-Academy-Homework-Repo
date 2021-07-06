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

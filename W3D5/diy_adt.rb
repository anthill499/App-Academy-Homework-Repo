# # exercise 1
class Stack 

    attr_reader :arr
    def initialize
        @arr = []
    end

    def push(el)
        @arr << el
    end

    def pop
        @arr.pop
    end

    def peek
        @arr[-1]
    end

end

class Queue
    attr_reader :arr
    def initialize
        @arr = []
    end

    def enqueue(n)
        @arr << n
    end

    def dequeue
        @arr.shift
    end

    def peek
        @arr[-1]
    end
end

class Map
    attr_reader :arr
    def initialize
        @arr = []
    end

    def set(key, value)     
        keys = @arr.flatten.select { |ele| @arr.index(ele) % 2 == 0 }
        keys.include?(key) ? @arr.each { |subarr| subarr[1] = value if subarr[0] == key } : @arr << [key, value]
    end

    def get(key)
        @arr.each { |pair| pair.include?(key) ? pair : raise "error!" }
    end

    def delete(key)
        @arr.each { |pair| (pair.include?(key) ? @arr.remove(pair) : raise "error!") }
        @arr
    end 
    
    def show
        @arr
    end

end

m = Map.new
m.set("gf", "mad")
m.set("bf", "hungry")
m.set("me?", 21)

p m.show
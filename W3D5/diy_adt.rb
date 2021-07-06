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
        keys = @arr.map { |subarr| subarr[0] }
        if !keys.include?(key)
            @arr << [key, value]
        else
            @arr.each { |subarr2| subarr2[-1] = value if subarr.include?(key) }
        end
    end

    def get(key)
        @arr.each { |pair| return pair if pair.include?(key) }
    end

    def delete(key)
        @arr.each { |pair| @arr.delete(pair) if pair.include?(key) }
        @arr
    end 
    
    def show
        @arr.dup
    end

end

m = Map.new
m.set("gf", "mad")
m.set("bf", "hungry")
m.set("me?", 22)
m.set("haha", "gottem")

p m.show
p m.get("bf")
p m.delete("gf")
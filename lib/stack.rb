# your code here
class Stack

    def initialize(limit = -1)
        @stack = []
        @limit = limit
    end

    def push(value)
        if @limit == -1
            @stack.push(value)
        elsif @stack.length >= @limit
            raise "Stack Overflow"
        else
            @stack.push(value)
        end
    end

    def pop
        @stack.pop
    end

    def peek
        @stack[-1]
    end

    def size
        @stack.length
    end

    def empty?
        size == 0
    end

    def full?
        size == @limit
    end

    def search(value)
        @stack.each_with_index do |element, index|
            if element == value
                return size - (index + 1)
            end
        end
        -1
    end

end

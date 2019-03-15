class Stack
    def initialize
        @stack = []
    end

    def push(el)
        @stack.push(el)
    end

    def pop
        @stack.pop
    end

    def peek
        @stack[-1]
    end
end

s = Stack.new

(1..10).each { |i| s.push(i) }

puts s.peek
s.pop

puts s.peek
s.pop

puts s.peek
s.pop

puts s.peek
s.pop
class Octopus
    attr_reader :var
    def initialize(arr)
        @var = arr
    end

    def sluggish_octopus # bubble sort
        sorted = false
        until sorted
            sorted = true
            (@var.length - 1).times do |i|
                if @var[i] > @var[i + 1]
                    sorted = false
                    @var[i], @var[i + 1] = @var[i + 1], @var[i]
                end
            end
        end
        @var
    end

    def dominant_octopus(arr) # merge sort
        return arr if arr.length <= 1
        mid_idx = arr.length / 2
        left = arr.take(mid_idx)
        right = arr.drop(mid_idx)
        left_do = dominant_octopus(left)
        right_do = dominant_octopus(right)
        dominant_octopus_helper(left_do, right_do)
    end

    def dominant_octopus_helper(left, right) # merge helper
        merged = []
        until left.empty? || right.empty?
            if left.first < right.first
                merged << left.shift
            else
                merged << right.shift
            end
        end
        merged + left + right
    end

    def clever_octopus # common clever sense
        longest = @var[0]
        @var[1..-1].each do |f|
            longest = f if f.length > longest.length
        end
        longest
    end
end



if __FILE__ == $PROGRAM_NAME 
    o = Octopus.new(['fish', 'fiiish', 'fiiiiish',
                    'fiiiish', 'fffish', 'ffiiiiisshh',
                    'fsh', 'fiiiissshhhhhh'])

    p o.sluggish_octopus
    p o.dominant_octopus(o.var)
    p o.clever_octopus
end
class Map
    def initialize
        @map = []
    end

    def set(key, value)
        @map.each do |map|
            if map.first == key
                map[-1] = key
                return
            end
        end
        @map << [key, value]
    end

    def get(key)
        @map.each { |map| return map.last if map.first == key }
        nil
    end

    def delete(key)
        @map.each { |map| @map.delete(map) if map.first == key }
    end

    def show
        @map
    end
end

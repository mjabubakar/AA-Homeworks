class Map

    def initialize
        @map = []
    end

    def set(key, value)
        @map.each { |el| el << value if el.include?(key) }
        @map.push([key, value])
          
    end

    def get(key)
        @map.each do |el|
            el if el.include?(key)
        end
    end

    def delete(key)
        @map.each do |el|
            if el.include?(key)
                el.clear
            end
        end
        @map.reject { |el| el.empty? }
    end

    def peek
        @map
        @map.reject { |el| el.empty? }
    end
end
class Cage
    attr_accessor :animal

    def intialize
        @animal = ""
    end

    def empty?
    
        if @animal.nil?
            return true
        else
            return false
        end
    end

end

class Zoo
    attr_reader :cages, :employees
    def initialize(zoo_name, opening_date,closing_date)
        @zoo_name = zoo_name
        @opening_date = opening_date
        @closing_date = closing_date
        @cages = build_cages
        @employees = []
    end


            def build_cages
        this_array = []
        10.times do 
          this_array << Cage.new
        end
        return this_array
    end

    def add_employee (name)
        employees.push(name)
    end

      def build_cages
        this_array = []
        10.times do 
          this_array << Cage.new
        end
      return this_array
      end

    def open?(date)
      date <= @closing_date && date >= @opening_date       
    end

    def add_animal(animal)
        @cages.each do |cage|
            if cage.empty?
                cage.animal = animal
                return
            end
        end
        "Your zoo is already at capacity!"
    end

    def visit
        waves = ""
        @employees.each do |employee|
          waves += "#{employee.greet}\n"
        end
        @cages.each do |cage|
            if !cage.empty?
                waves += "#{cage.animal.speak}\n"
            end
        end
        return waves
    end 
end


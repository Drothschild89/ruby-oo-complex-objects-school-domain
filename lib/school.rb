# code here!
class School
    attr_accessor :roster
    def initialize(name)
        @name = name
        @roster = {}
    end

    def name
        @name
    end
    
    def add_student(name, child_grade)
        if roster[child_grade]
            @roster[child_grade] << name
        else 
            @roster[child_grade] = [name]
        end
    end

    def grade(number)
        self.roster[number]
    end

    def sort()
        @roster.each do |keys, value|
            value.sort!
        end
    end

end


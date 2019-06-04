require "pry"

class School
    attr_reader :roster

    def initialize(name)
        @name = name
        @roster = Hash.new
    end
    
    def add_student(student, grade)

    end

    def grade

    end
    
    def sort

    end
end

school = School.new("Bayside High School")

# puts school
# puts school
require "pry"

class School
    attr_reader :roster

    def initialize(name)
        @name = name
        @roster = Hash.new
    end
    
    def add_student(student, grade)
        if roster.has_key? grade
            roster[grade] << student
        else
            roster[grade] = []
            roster[grade] << student
        end
    end

    def grade(grade)
        roster[grade]
    end
    
    def sort
        roster.each do  |grade, class_hash| 
            class_hash.sort!
        end
    end

end

school = School.new("Bayside High School")

# puts school
# puts school
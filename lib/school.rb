# code here!
require "pry"

class School
    attr_reader :roster
    
    def initialize(name)
        @name = name
        @roster = {}
        #binding.pry
    end

    def add_student(student, grade)
 
        if roster.has_key?(grade)
            roster[grade] << student
        else
            roster[grade] = [student]
        end     
    end

    def grade(grade)
        return roster[grade]
    end

    def sort
        roster.each do |key, value|
            value.sort!
        end
    end

end



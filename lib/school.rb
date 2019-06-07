require "pry"

# code here!
class School

    attr_reader :roster 

  

    def initialize(name)
        @name = name 
        @roster = {}
    end

    def add_student(name, grade)
            #hash = {grade => [name]}
            #@roster = hash
            if !@roster.has_key?(grade) 
                @roster[grade] = []
            end   
            @roster[grade] << name             

    end

    def grade(grade)
        roster[grade]
    end

    def sort
        puts @roster
        @roster = @roster.each do |grade, students|
            students.sort!
        end
        @roster
    end
#binding.pry
end
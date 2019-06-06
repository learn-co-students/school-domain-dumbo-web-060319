require 'pry'

class School
    attr_accessor :name, :roster
    
    def initialize(name, roster = {})
        @name = name
        @roster = roster
    end

    def add_student(student_name, grade)
        @grade = grade
        @student_name = student_name
        if @roster.include?(grade) == false
            @roster[grade] = []
        end
        @roster[grade] << student_name
    end

    def grade(key_grade)
        @roster[key_grade]
    end

    def sort
       @roster.each do |grade, name|
        @roster[grade] = name.sort
       end
    end
end
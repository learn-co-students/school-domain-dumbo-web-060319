require 'pry'

class School
    attr_accessor :roster
    
    def initialize(school_name)
      @school_name = school_name
      @roster = {}
    end
    
    def add_student(student, grade)
      if @roster[grade] == nil
        @roster[grade] = []
        @roster[grade] << student
      else
        @roster[grade] << student
      end
    end
    
    def grade(grade)
      roster[grade]
    end
    
    def sort 
        @roster.each do |grade, student|
            @roster[grade] = student.sort
        end 
    end
    # def sort 
    #     sorted_grade = []
    #     @roster.each do | grade, student|
    #         @roster[grade] = student.sort
    #         @roster.sort.each do |the_grade|
    #             sorted_grade << the_grade[0]
    #         end
    #         # @roster[grade] = @roster.sort[0][0]
    #         sorted_grade.each do |grade|
    #             binding.pry
    #         end
    #     end
       
    # end

    
  end 
require 'pry'

class School 
  
  attr_accessor :name, :roster
  def initialize (name)
  	@name = name
  	@roster = {}
  end

  def grade (grade)
  	@roster.each {|roster_grade, students|
  	  if roster_grade == grade
  	  	return students
  	  end
  	}
  end

  def sort
  	@roster.each {|roster_grade, students|
  		@roster[roster_grade] = students.sort
  	}
  	@roster
  end

  def add_student (student_name, grade)
  	@roster.each {|roster_grade, grade_array| 
      if grade == roster_grade
      	@roster[grade] << student_name
        return
      end
    }
    @roster[grade] = [student_name]
  end
end

school = School.new("Bayside High School")


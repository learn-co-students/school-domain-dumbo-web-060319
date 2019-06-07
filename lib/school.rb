# code here!

class School
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def roster
    @roster
  end
  
  def add_student(student_name, grade)
    @student_name = student_name
    @grade = grade

    if (!@roster[@grade])
      @roster[@grade] = []
    end

    @roster[@grade].push(student_name)
  end
  
  def grade(grade)
    self.roster[grade]
  end
  
  def sort
    self.roster.each { |key, value|
      value.sort!
    }
  end

  
end
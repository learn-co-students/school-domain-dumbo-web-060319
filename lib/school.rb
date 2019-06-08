
class School
  attr_accessor :name, :roster

def initialize(name)
  @name = name
  @roster = {}
end

def add_student(student_name, grade)
  roster[grade] ||= []
  roster[grade] << student_name
end
#is able to retreive students from a grade
def grade(student_grade)
  roster[student_grade]
end
#is able to sort the students
def sort
  sorted = {}
  roster.each do |grade, students|
    sorted[grade] = students.sort
      end
      sorted
  end
end

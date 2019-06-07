require 'pry'

class School
  attr_reader :name, :roster
  attr_accessor :grade

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    @roster.each do |grades, student|
      if grade == grades
        return @roster[grade] << student_name
      end
    end
    @roster[grade] = [] << student_name
  end

  def grade(grade)
    @roster.fetch(grade)
  end

  def sort
    @roster.each do |grade, students|
      @roster[grade] = students.sort
      binding.pry
    end
  end

end


phish = School.new("Phish")
grey = School.new("Grey")
fun = School.new("Fun")

grey.add_student("Tom", 9)
grey.add_student("Sam", 3)
grey.add_student("Bob", 1)



binding.pry

puts "done"

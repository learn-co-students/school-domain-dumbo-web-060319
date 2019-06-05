require "pry"

class School
  attr_accessor :roster, :school_name
  

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(name, grade)
    # the first time we enter a grade, make it an empty array
    # other wise just skip to pushing a student to that grade
    @roster[grade] = [] if @roster[grade].nil?
    @roster[grade] << name 
  end

  def grade(grade)
    @roster.each do |grade_key, name|
      if grade == grade_key
        return name
      end
    end
  end

  def sort
    # I have to sort the names 
    # I have to get into the array inside the hash
    @roster.each do |grade_key, name|
      name.sort!
    end
  end

end


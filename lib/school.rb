# code here!

class School 
  attr_reader :name 
  attr_accessor :roster
  def initialize(name)
    @name = name 
    @roster = {}
  end 
  
  def add_student(name, grade)
    x=@roster.keys 
    counter = 0 
    bool_fun = 0
    while (counter < x.length) 
      if x[counter] == grade 
        bool_fun = 1
      end 
      counter = counter + 1
    end 
    if bool_fun == 1 
      roster[grade].push(name)
    else 
      roster[grade]=[]
      roster[grade].push(name)
    end 
  end 
  def grade(level)
    @roster.each do |k1,v1|
      if k1 == level 
        return v1 
      end 
    end 
  end 
  def sort
    x=@roster
    x.each do |k1,v1|
      a=v1.sort!

    end 
    return x
  end 
end 


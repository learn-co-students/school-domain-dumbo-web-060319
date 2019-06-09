# code here!
class School
  attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster ={}
  end

  def roster
    @roster
  end

  def add_student(name,grade)
    if @roster.keys.include?(grade)
      @roster[grade] << name
    else
      @roster[grade]=[name]
    end
  end

  def grade(grad)
    @roster[grad]
  end

  def sort
    @roster.each do  |k,v|
        v.sort!
    end
    @roster
  end
end

# code here!
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name=name
    @roster={}
  end

  def add_student(student_names, grade)
    if @roster[grade]
      @roster[grade] << student_names
    else
      @roster[grade] = [student_names].sort
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    [student_names].sort
    @roster.sort.to_h
  end
end

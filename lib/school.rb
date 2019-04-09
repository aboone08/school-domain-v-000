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
      @roster[grade] = [student_names]
    end
    student_names.sort
  end

  def grade(grade)
    @roster[grade]
  end

  def sort

    @roster.sort.to_h(student_names.sort)
  end
end

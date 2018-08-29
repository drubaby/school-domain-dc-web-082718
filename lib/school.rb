class School
  attr_reader :name, :roster

def initialize(name)
  @name = name
  @roster = {}
end

def add_student(student_name, student_grade)
  if @roster.has_key?(student_grade)
    @roster[student_grade] << student_name
  else
    @roster[student_grade] = []
    @roster[student_grade] << student_name
  end
end

def grade(grade_num)
  @roster[grade_num]
end

def sort
  @roster.each do |grade, students|
    @roster[grade] = students.sort
  end

end

end #end of class def

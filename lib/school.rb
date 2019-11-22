# code here!
class School # The School class would by referred to as the model in the domain model context

  attr_accessor :roster, :student_name
  attr_writer :grade
  
  def initialize(roster)
    @roster = Hash.new
  end 
  
  def add_student(student_name, grade)
    # @roster[grade] = []
    
    # @roster[grade] << student_name
    
    if @roster[grade]
      @roster[grade] << student_name
    else 
      @roster[grade] = [student_name]
    end 
  end
  
  def grade(grade_no)
    @roster[grade_no]
  end 
  
  def sort 
    @roster.each do |grade, student_names|
      @roster[grade] = student_names.sort
    end 
  end
  
end
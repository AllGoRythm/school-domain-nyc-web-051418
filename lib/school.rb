require 'pry'
class School

  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @name = name
    @grade = grade
    roster[grade] ||= []
    roster[grade] << name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    collect = {}
    roster.map do |grade, name|
      collect[grade] = name.sort
    end
    collect
  end
end

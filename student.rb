require_relative 'Subject.rb'

class Student
  attr_accessor :name, :quizzes, :tests

  def initialize(args={})
    @name     = args.fetch(:name, '')
    @quizzes  = args.fetch(:quizzes, [])
    @tests    = args.fetch(:tests, [])
    @final    = args.fetch(:final, nil)
  end
end

bobs_quizzes  = [85,90,63,75,95,83,75,75,80,100]
bobs_tests    = [90,85,70]
bobs_final    = 88
bob = Student.new(name: 'bob', quizzes: bobs_quizzes, tests: bobs_tests, final: bobs_final)


jills_quizzes   = [94,89,80,91,78,85,99,75,82,70]
jills_tests     = [90,91,75]
jills_final     = 80
jill = Student.new(name: 'jill', quizzes: jills_quizzes, tests: jills_tests, final: jills_final)


math = Subject.new(students: [bob,jill])
p math.students
p math.drop_lowest math.students[0].quizzes
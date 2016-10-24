class Subject
  attr_accessor :students, :quiz_weight, :test_weight, :final_weight

  def initialize(args={})
    @students     = args.fetch(:students, [])
    @quiz_weight  = args.fetch(:quiz_weight, 0.25)
    @test_weight  = args.fetch(:test_weight, 0.35)
    @final_weight  = args.fetch(:final_weight, 0.4)
  end


  def drop_lowest array
    temp = array.dup
    temp.delete_at(temp.find_index(temp.min))
    temp
  end

end
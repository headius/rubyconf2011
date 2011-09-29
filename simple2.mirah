class Simple2
  def initialize(name:String, number:int)
    @name = name
    @number = number
  end
  
  attr_accessor :name, :number
  
  def doSomething(something:Runnable)
    puts "something in #{name} #{number}"
    something.run
  end
end
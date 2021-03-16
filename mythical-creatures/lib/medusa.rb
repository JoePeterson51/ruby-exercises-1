class Medusa
  attr_reader :name, :statues 
  def initialize(name)
    @name = name
    @statues = [] 
  end
  
  def stare(person)
    @statues << person 
    person.stoned << true  
    if @statues.count > 3 
      @statues[0].stoned.shift 
      @statues.shift 
    end 
  end 
end 

class Person
  attr_reader :name, :stoned 
  def initialize(name)
    @name = name  
    @stoned = []
  end 

  def stoned?
    @stoned.include?(true)
  end 
end
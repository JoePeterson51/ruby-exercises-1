class Ogre
  attr_reader :name, :home, :swings, :encounter_counter 
  def initialize(name, home = 'Swamp')
    @name = name
    @home = home
    @encounter_counter = 0
    @swings = 0
  end

  def encounter(human)
    @encounter_counter += 1
    human.encounter_counter += 1
    if human.notices_ogre? == true 
      @swings += 1
      human.swings += 1
    end 
  end

  def swing_at(human)
    @swings += 1
    human.swings += 1
  end 

  def apologize(human)
    human.encounter_counter = 0 
    human.swings = 0
  end 
end

class Human 
  attr_accessor :encounter_counter, :swings
  attr_reader :name
  def initialize(name = 'Jane', encounter_counter = 0)
    @name = name
    @encounter_counter = encounter_counter
    @swings = 0
  end

  def notices_ogre?
    if @encounter_counter % 3 == 0
      true 
    else 
      false
    end 
  end 

  def knocked_out?
    if @swings >= 2
      true 
    else 
      false 
    end 
  end 

end 
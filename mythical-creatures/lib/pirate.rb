class Pirate
  attr_reader :name, :job, :booty 
  def initialize(name, job = 'Scallywag')
    @name = name 
    @job = job 
    @cursed = true 
    @heinous_act_counter = 0
    @booty = 0
  end 

  def cursed?
    if @heinous_act_counter >= 3
      false 
    else 
      @cursed
    end 
  end 

  def commit_heinous_act
    @heinous_act_counter += 1
  end 

  def rob_ship
    @booty += 100
  end 
end 
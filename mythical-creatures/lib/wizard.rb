class Wizard
  attr_reader :name, :bearded
  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @rested = 0
  end

  def bearded?
    bearded
  end

  def incantation(incantation)
    incantation.insert(0, 'sudo ')
  end

  def rested?
    return false if @rested >= 3
    true
  end

  def cast
    @rested += 1
    return "MAGIC MISSILE"
  end
end

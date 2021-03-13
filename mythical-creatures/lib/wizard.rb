class Wizard
  attr_reader :name
  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @spells_cast = 0
  end

  def bearded?
    @bearded
  end

  def incantation(incantation)
    incantation.insert(0, 'sudo ')
  end

  def rested?
    if @spells_cast < 3
      true
    else
      false
    end
  end

  def cast
    @spells_cast += 1
    return "MAGIC MISSILE"
  end
end

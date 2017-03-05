class Player

  attr_reader :name, :points
  DEFAULT_POINTS = 100
  def initialize(name="Player", points = DEFAULT_POINTS)
    @name = name
    @points = points
  end

  def points_damage
    @points -= 10
  end

end

class Airport

  def initialize
    @planes = []
  end

  def land(plane)
    plane.landed
    @planes << plane
  end

end

class Airport

  def initialize
    @planes = []
  end

  def land(plane)
    plane.send(:landed)
    @planes << plane
  end

  def take_off(plane)
    plane.send(:take_off)
    @planes.delete(plane)
  end

end

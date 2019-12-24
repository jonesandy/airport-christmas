class Airport

  DEFAULT_CAPACITY = 10

  def initialize
    @planes = []
    @capacity = DEFAULT_CAPACITY
  end

  def land(plane)
    raise "Can't land aiport full!" if full?

    plane.send(:landed)
    @planes << plane
  end

  def take_off(plane)
    plane.send(:take_off)
    @planes.delete(plane)
  end

  private

  def full?
    @planes.length >= @capacity
  end

end

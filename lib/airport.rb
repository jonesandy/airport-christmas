class Airport

  DEFAULT_CAPACITY = 10

  def initialize(capacity = DEFAULT_CAPACITY)
    @planes = []
    @capacity = capacity
  end

  def land(plane)
    raise "Can't land airport full!" if full?

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

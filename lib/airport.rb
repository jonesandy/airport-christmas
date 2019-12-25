require_relative './weather.rb'

class Airport

  DEFAULT_CAPACITY = 10
  attr_reader :weather

  def initialize(capacity = DEFAULT_CAPACITY, weather = Weather.new)
    @planes = []
    @capacity = capacity
    @weather = weather
  end

  def land(plane)
    raise "Can't land airport full!" if full?
    raise "Can't land weather is stormy!" if stormy?

    plane.send(:landed)
    @planes << plane
  end

  def take_off(plane)
    raise "Can't take off weather is stormy!" if stormy?

    plane.send(:take_off)
    @planes.delete(plane)
  end

  private

  def full?
    @planes.length >= @capacity
  end

  def stormy?
    @weather.stormy?
  end

end

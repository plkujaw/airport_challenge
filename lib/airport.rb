require_relative "plane"

class Airport

  attr_reader :capacity, :planes

  CAPACITY = 100

  def initialize(capacity = CAPACITY)
    @capacity = capacity
    @planes = []
  end

  def take_off(plane)
    @planes.delete(plane)
    return "Take off succesfull"
  end

  def land(plane)
    @planes << plane
  end

end

# require_relative "plane"

class Airport

  attr_reader :capacity, :planes

  CAPACITY = 100

  def initialize(capacity = CAPACITY)
    @capacity = capacity
    @planes = []
  end

  def land(plane)
    @planes << plane
  end

end

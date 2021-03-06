require "airport"

describe Airport do

  describe "#initialize" do
    it "Creates airports with default capacity of 20" do
      heathrow = Airport.new("Heathrow")
      expect(heathrow.capacity).to eq(20)
    end
    it "Creates airports with any given capacity" do
      gatwick = Airport.new("Gatwick", 10)
      expect(gatwick.capacity).to eq(10)
    end
  end

  describe "#take_off" do
    it "Removes the plane from the list of planes at the airport" do
      plane = double("plane")
      subject.take_off(plane)
      expect(subject.planes).not_to include(plane)
    end
  end

  describe "#land" do
    it "Adds the plane to the list of planes at the airport" do
      plane = double("plane")
      subject.land(plane)
      expect(subject.planes).to include(plane)
    end
  end

  describe "#full?" do
    it "Returns true if airport is full" do
      plane = double("plane")
      subject.capacity.times { subject.land(plane) }
      expect(subject.full?).to be true
    end
    it "Returns false if airport is not full" do
      plane = double("plane")
      (subject.capacity - 1).times { subject.land(plane) }
      expect(subject.full?).to be false
    end
  end

  describe "#weather" do
    it "Returns weather conditions on the airport" do
      weather_report = double("weather_report", :current_weather => "sunny")
      expect(subject.weather(weather_report)).to eq("sunny")
    end
  end
end

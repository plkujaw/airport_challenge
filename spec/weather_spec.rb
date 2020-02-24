require "weather"

describe WeatherReport do

  describe "#current_weather" do
    it "Provides weather report on the airport" do
      expect(subject.current_weather).to eq("sunny").or eq("stormy")
    end
  end
end

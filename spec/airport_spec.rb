require "airport"

describe Airport do
  subject(:airport) { described_class.new }

  it "has a default capacity that can be overridden as appropriate" do
    expect(subject.capacity).to eq(Airport::CAPACITY)
  end

describe "#land" do
  let(:plane) { double("plane") }
  
  it "allows plane to land at an airport" do
    expect{ subject.land(plane) }.not_to raise_error

end

    end


end

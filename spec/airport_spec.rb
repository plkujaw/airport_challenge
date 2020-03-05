require "airport"

describe Airport do
  subject(:airport) { described_class.new }

  it "has a default capacity that can be overridden as appropriate" do
    expect(subject.capacity).to eq(Airport::CAPACITY)
  end


describe "#take_off" do
  let(:plane) { double ("plane") }

  it "allows plane to take off from an airport" do
    expect { subject.take_off(plane) }.not_to raise_error
  end

  it "confirms take off" do
    expect(subject.take_off(plane)).to eq("Take off succesfull")
  end

  it "removes plane from the airport after take off" do
    subject.land(plane)
    subject.take_off(plane)
    expect(subject.planes).not_to include(plane)
  end

end



describe "#land" do
  let(:plane) { double("plane") }

  it "allows plane to land at an airport" do
    expect{ subject.land(plane) }.not_to raise_error
  end

    end


end

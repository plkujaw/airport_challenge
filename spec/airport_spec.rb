require "airport"

describe Airport do
  subject(:airport) { described_class.new }

  it "has a default capacity that can be overridden as appropriate" do
    expect(subject.capacity).to eq(Airport::CAPACITY)
  end
end

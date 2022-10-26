require "counter"

RSpec.describe Counter do
  it "initially reports a count of zero" do
    counter = Counter.new
    expect(counter.report).to eq "Counted to 0 so far"
  end

  it "reports a count of added values" do
    counter = Counter.new
    counter.add(5)
    result = counter.report
    expect(result).to eq "Counted to 5 so far"
  end

  it "reports a count of all added values" do
    counter = Counter.new
    counter.add(1)
    counter.add(3)
    counter.add(2)
    expect(counter.report).to eq "Counted to 6 so far"
  end
end
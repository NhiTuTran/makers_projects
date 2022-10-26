require "reading_time"

RSpec.describe "reading_time method" do
  it "returns estimate reading time" do
    result = reading_time("Hello my name is Jeff")
    expect(result).to eq 1.5
  end
end
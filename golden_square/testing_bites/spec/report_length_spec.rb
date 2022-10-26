require "report_length"

RSpec.describe "report_length method" do
  it "returns a message with the number of characters in string" do
    result = report_length("hello")
    expect(result).to eq "This string was 5 characters long."
  end
end
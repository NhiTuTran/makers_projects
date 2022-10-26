require "make_snippet"

RSpec.describe "make_snippet method" do
  it "returns the first five words of a given string" do
    result = make_snippet("Hello my name is Jeff")
    expect(result).to eq "Hello my name is Jeff"
  end

  it "returns the first five words of a given string and then an ellipsis if there are more than five words" do
    result = make_snippet("Good morning, my name is Jeff")
    expect(result).to eq "Good morning, my name is..."
  end
end
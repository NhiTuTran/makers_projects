require "string_builder"

RSpec.describe StringBuilder do
  it "adds a string" do
    str = StringBuilder.new
    str.add("Hello World")
    result = str.output
    expect(result).to eq "Hello World"
  end

  it "returns length of string" do
    str = StringBuilder.new
    str.add("Good afternoon")
    result = str.size
    expect(result).to eq 14
  end

  it "concatenates string and returns it" do
    str = StringBuilder.new
    str.add("Hello ")
    str.add ("World")
    result = str.output
    expect(result).to eq "Hello World"
  end
end
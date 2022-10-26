require "greet"

RSpec.describe "greet method" do
  it "greet a given user" do
    result = greet("Jeff")
    expect(result).to eq "Hello, Jeff!"
  end
end
require "count_words"

RSpec.describe "count_words method" do
  it "returns the number of words in a given string" do
    result = count_words("Hello my name is Jeff")
    expect(result).to eq 5
  end

  it "returns the number of words in a given string" do
    result = count_words("Good morning")
    expect(result).to eq 2
  end
end
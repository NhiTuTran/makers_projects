require "check_codeword"

RSpec.describe "check_codeword method" do
  it "returns a correct message if given the right codeword" do
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end

  it "returns a close message if given a codeword that is close" do
    result = check_codeword("h123e")
    expect(result).to eq "Close, but nope."
  end

  it "returns a wrong message if given the wrong codeword" do
    result = check_codeword("h123")
    expect(result).to eq "WRONG!"
  end
end
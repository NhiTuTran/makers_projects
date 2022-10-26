require 'gratitudes'
RSpec.describe Gratitudes do
    it "pusing a string to gratitudes array" do
        string = Gratitudes.new
        result = string.add("no errors")
        expect(result).to eq ["no errors"]
    end

    it "formats the string and adds it to the array" do
        string = Gratitudes.new
        string.add("no errors")
        string.add("finish challenges")
        result = string.format
        expect(result).to eq "Be grateful for: no errors, finish challenges"
    end

end
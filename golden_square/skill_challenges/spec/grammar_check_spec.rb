require 'grammar_check'

RSpec.describe "grammar_check method" do
    
    it "checks that a text starts with capital and ends with sentence-ending punctuation" do
        result = grammar_check("Hello my name is Jeff.")
        expect(result).to eq true
    end

    it "checks that a text starts with a capital" do
        result = grammar_check("hello my name is Jeff.")
        expect(result).to eq false
    end

end

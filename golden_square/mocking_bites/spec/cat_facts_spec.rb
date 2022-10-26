require "cat_facts"

RSpec.describe CatFacts do
  it "returns a cat fact" do 
    requester = double(:requester)
    cat_facts = CatFacts.new(requester)
    expect(requester).to receive(:get).with(URI("https://catfact.ninja/fact")).and_return('{"fact":"Heat occurs several times a year and can last anywhere from 3 to 15 days.","length":73}')
    expect(cat_facts.provide).to eq "Cat fact: Heat occurs several times a year and can last anywhere from 3 to 15 days."
  end
end
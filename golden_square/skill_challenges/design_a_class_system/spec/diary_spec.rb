require "diary"

RSpec.describe Diary do
  it "has empty list of entries" do
    diary = Diary.new
    expect(diary.all).to eq []
  end

  it "has empty list of contacts" do
    diary = Diary.new
    expect(diary.all_contacts).to eq Hash.new
  end

  it "returns all contacts" do
    diary = Diary.new
    diary.add_contact("Bob Smith", "07896797685")
    result = {"Bob Smith"=>"07896797685"}
    expect(diary.all_contacts).to eq result
  end
end
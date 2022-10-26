require "secret_diary"
require "diary"

RSpec.describe "integration" do
  it "initally does not read the diary because it is locked" do
    diary = Diary.new("Contents")
    secret_diary = SecretDiary.new(diary)
    expect{ secret_diary.read }.to raise_error "Go away!"
  end

  it "reads the diary contents when it is unlocked" do
    diary = Diary.new("Contents")
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    expect(secret_diary.read).to eq "Contents"
  end

  it "does not read the diary contents when it is relocked" do
    diary = Diary.new("Contents")
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    secret_diary.lock
    expect{ secret_diary.read }.to raise_error "Go away!"
  end
end
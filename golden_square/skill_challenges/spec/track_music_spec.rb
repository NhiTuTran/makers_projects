require "track_music"

RSpec.describe MusicTracker do
  it "has an empty list" do
    music_tracker = MusicTracker.new
    expect(music_tracker.list).to eq []
  end

  it "adds music to the list" do
    music_tracker = MusicTracker.new
    music_tracker.add("music1")
    expect(music_tracker.list).to eq ["music1"]
  end

  it "shows all music added to the list" do
    music_tracker = MusicTracker.new
    music_tracker.add("music1")
    music_tracker.add("music2")
    expect(music_tracker.list).to eq ["music1", "music2"]
  end
end
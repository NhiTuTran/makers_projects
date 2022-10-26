require "music_library"
require "track"

RSpec.describe "integration" do
  it "adds and list tracks" do
    library = MusicLibrary.new
    track_1 = Track.new("Track 1", "Artist 1")
    track_2 = Track.new("Track 2", "Artist 2")
    library.add(track_1)
    library.add(track_2)
    expect(library.all).to eq [track_1, track_2]
  end

  it "searches tracks by title" do
    library = MusicLibrary.new
    track_1 = Track.new("Track 1", "Artist 2")
    track_2 = Track.new("Track 3", "Artist 4")
    library.add(track_1)
    library.add(track_2)
    expect(library.search("1")).to eq [track_1]
  end
end
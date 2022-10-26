require "music_library"

RSpec.describe MusicLibrary do
  it "adds and list tracks" do
    library = MusicLibrary.new
    track_1 = double :track
    track_2 = double :track
    library.add(track_1)
    library.add(track_2)
    expect(library.all).to eq [track_1, track_2]
  end

  it "searches tracks by title" do
    library = MusicLibrary.new
    track_1 = double :track, matches?: true
    track_2 = double :track, matches?: false
    library.add(track_1)
    library.add(track_2)
    expect(library.search("1")).to eq [track_1]
  end
end
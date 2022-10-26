require "artist_repository"

RSpec.describe ArtistRepository do
  def reset_artists_table
    seed_sql = File.read('spec/seeds_albums.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'music_library_test' })
    connection.exec(seed_sql)
  end

  before(:each) do
    reset_artists_table
  end
  
  it "returns one artist" do
    repo = ArtistRepository.new
    artists = repo.all
    expect(artists.length).to eq 1
    expect(artists.first.name).to eq 'Pixies'
    expect(artists.first.genre).to eq 'Rock'
  end
end
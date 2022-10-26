require_relative "artist"

class ArtistRepository
  def all
    artists = []

    sql = 'SELECT id, name, genre FROM artists;'
    result_set = DatabaseConnection.exec_params(sql, [])

    result_set.each do |artist_db|
      artist = Artist.new
      artist.id = artist_db['id']
      artist.name = artist_db['name']
      artist.genre = artist_db['genre']

      artists << artist
    end

    return artists
  end
end
require_relative './lib/database_connection'
require_relative './lib/album_repository'
require_relative './lib/artist_repository'

class Application
  def initialize(music_library, io, album_repository, artist_repository)
    DatabaseConnection.connect('music_library')
    @io = io
    @album_repository = album_repository
    @artist_repository = artist_repository
  end

  def run
    album = @album_repository.all
    artist = @artist_repository.all
    
    @io.puts "Welcome to the music library manager!\n\n"
    @io.puts "What would you like to do?\n 1 - List all albums\n 2 - List all artists\n\n"
    @io.print "Enter your choice: "
    choice = @io.gets.to_i
      if choice == 1
        @io.puts "\nHere is the list of albums:"
        album.each do |record|
          @io.puts " * #{record.id} - #{record.title}\n"
        end
      elsif choice == 2
        @io.puts "\nHere is the list of artists:"
        artist.each do |artist_db|
          @io.puts " * #{artist_db.id} - #{artist_db.name}"
        end
      end
  end

  if __FILE__ == $0
    app = Application.new(
      'music_library',
      Kernel,
      AlbumRepository.new,
      ArtistRepository.new
    )
    app.run
  end
end

=begin
require_relative 'lib/database_connection'
require_relative 'lib/album_repository'

DatabaseConnection.connect('music_library')

album_repository = AlbumRepository.new

# Get the album with id 3
album = album_repository.find(3)

puts album.id
puts album.title
puts album.release_year
=end
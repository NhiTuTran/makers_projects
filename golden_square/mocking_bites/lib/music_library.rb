class MusicLibrary
  def initialize
    @library = []
  end

  def add(track)
    @library << track
  end

  def all
    @library
  end
  
  def search(keyword)
    return @library.select do |track|
    track.matches?(keyword)
    end
  end
end
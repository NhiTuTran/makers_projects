class MusicTracker
  def initialize
    @list = []
  end

  def add(music)
    @list << music
  end

  def list
    return @list
  end
end
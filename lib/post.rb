class Post
  attr_accessor :name, :author

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
  end

  def self.song_count
    Song.all.count
  end

  def author_name
    if(author != nil)
      author.name
    else
      nil
    end
  end
end

class Album
  attr_accessor :album_id, :album_name, :artists, :tracks, :duration_ms
  def initialize (album_id, album_name, artists)
    @album_id = album_id
    @album_name = album_name
    @artists = artists
    @tracks = []
    @duration_ms = []
  end

  def id
    @album_id
  end

  def album_name
    puts "Name : #{@album_name}"
  end

  def artists
    puts "Artist : #{@artists}\n"
  end

  def duration
    puts "Duration (min.): "
    sum = 0
    @tracks.each do |time|
      time[:duration_ms] = time[:duration_ms].to_i
      sum = sum + time[:duration_ms]
    end
    puts (sum * 1.67)/100000
    puts "\n"
    puts "Title : "
    @tracks.each do |file|
      puts " - #{file[:title]}"
    end
    puts "\n"
  end

  def summary
    album_name
    artists
    duration
    # tracks

  end

end

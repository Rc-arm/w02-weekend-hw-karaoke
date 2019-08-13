require('minitest/autorun')
require('minitest/rg')

require_relative('../song')

class SongTest < MiniTest::Test

  def setup
    @song = Song.new("Savoy", "Lucky Millinder")
  end

  def test_song_title
    assert_equal("Savoy", @song.song_title())
  end

  def test_song_artist
    assert_equal("Lucky Millinder", @song.song_artist())
  end

end

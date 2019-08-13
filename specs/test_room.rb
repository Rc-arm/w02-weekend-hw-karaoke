require('minitest/autorun')
require('minitest/rg')

require_relative('../room.rb')
require_relative('../song.rb')
require_relative('../guest.rb')

class RoomTest < MiniTest::Test

  def setup
    @room01 = Room.new("Room 01", ["Savoy"])

    @guest01 = Guest.new("Frankie")
    @guest02 = Guest.new("Norma")
    @guest03 = Guest.new("Al")

    @guestlist = [@guest01, @guest02]
  end

  def test_room_id
    assert_equal("Room 01", @room01.room_id())
  end

  def test_playlist_has_songs
    assert_equal(["Savoy"], @room01.playlist())
  end

  def test_add_guest
    @room01.add_guest(@guest01)
    assert_equal(1, @room01.guestlist.length())
  end

  def test_remove_all_guests
    @guestlist.clear
    assert_equal
  end

end

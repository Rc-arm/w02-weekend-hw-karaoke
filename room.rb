class Room

  attr_reader :room_id, :playlist, :guestlist

  def initialize(room_id, playlist)
      @room_id = room_id
      @playlist = playlist
      @guestlist = []
  end

  def add_guest(guest)
    @guestlist.push(guest)
  end

  def remove_all_guests(guest)
    @guestlist.delete(guest)
  end

end

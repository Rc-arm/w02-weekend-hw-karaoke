require('minitest/autorun')
require('minitest/rg')

require_relative('../guest.rb')
require_relative('../room.rb')

class GuestTest < MiniTest::Test

  def setup
    @guest01 = Guest.new("Frankie")
  end

  def test_customer_name
    assert_equal("Frankie", @guest01.guest_name())
  end

end

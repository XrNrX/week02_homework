require("minitest/autorun")
require("minitest/rg")
require_relative("../Guests")

class TestGuests < MiniTest::Test

  def setup
    @guest1 = Guests.new("Stuart") # tried to give guests cash here but created
    @guest2 = Guests.new("Jenny")  # argument errors couldn't figure out were i was going wrong!
    @guest3 = Guests.new("Smudge")
    @guests = Guests.new([@guest1, @guest2, @guest3])
  end

def test_does_guest_have_a_name
  assert_equal("Stuart", @guest1.name)
end

# def test_does_guest_have_cash
#   assert_equal(100, @guest1.cash)
# end





end

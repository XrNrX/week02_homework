require("minitest/autorun")
require("minitest/rg")
require_relative("../Rooms")
require_relative("../Guests")
require_relative("../Songs")


class TestRooms < MiniTest::Test


  def setup
    @room1 = Rooms.new(10, 8)
    @room2 = Rooms.new(33, 6)
    @room3 = Rooms.new(100, 2)
    # @rooms = Rooms.new([@room1, @room2, @room3])
    @guest1 = Guests.new("Stuart")
    @guest2 = Guests.new("Jenny")
    @guests = Guests.new([@guest1, @guest2, @guest3])
    @song1 = Songs.new("Born to be Wild")


  end

  def test_does_a_room_have_a_number
    assert_equal(10, @room1.room)
  end

  def test_if_room_can_add_guest
    @room1.add_guest(@guest1)
    assert_equal(1, @room1.guests.length)
  end

  def test_if_room_can_remove_guest
    @room1.add_guest(@guest2)
    @room1.remove_guest(@guest2)
    assert_equal(0, @room1.guests.length)
  end

  def test_if_room_can_add_song
    @room1.add_song(@song1)
    assert_equal(1, @room1.songs.length)
  end

  def test_if_room_can_count_guests
    @room1.add_guest(@guest1)
    assert_equal(1, @room1.guests.count)
  end

  def test_does_the_room_have_a_capacity
    @room3.add_guest(@guest1)
    @room3.add_guest(@guest2)
    @room3.add_guest(@guest3)
    @room3.check_capacity(@guests)
    assert_equal(2, @room3.capacity)
  end



  end

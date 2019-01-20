require("minitest/autorun")
require("minitest/rg")
require_relative("../Bar")
require_relative("../Rooms")
require_relative("../Guests")
require_relative("../Songs")


class TestBar < MiniTest::Test

  def setup
    # @bar = Bar.new("Bell's Bar", @rooms, @songs)
    @room1 = Rooms.new(10)
    @room2 = Rooms.new(33)
    @room3 = Rooms.new(100)
    rooms = [@room1, @room2, @room3]
    @guest1 = Guests.new("Stuart")
    @guest2 = Guests.new("Jenny")
    @guests = Guests.new([@guest1, @guest2, @guest3])
    @song1 = Songs.new("Born to be Wild")
    @song2 = Songs.new("New York, New York")
    @song3 = Songs.new("Whatever")
    songs = [@song1, @song2, @song3]
    @bar = Bar.new("Bell's Bar", songs, rooms)

  end

  def test_does_the_bar_know_its_name
    assert_equal("Bell's Bar", @bar.name())
  end

  def test_does_the_bar_have_songs
    assert_equal(3, @bar.songs.length())
  end

  def test_does_the_bar_have_rooms
    assert_equal(3, @bar.rooms.length())
  end



  end

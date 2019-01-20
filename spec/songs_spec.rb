require("minitest/autorun")
require("minitest/rg")
require_relative("../Songs")


class TestSongs < MiniTest::Test


  def setup
    @song1 = Songs.new("Born to be Wild")
    @song2 = Songs.new("New York, New York")
    @song3 = Songs.new("Whatever")
  end

  def test_does_a_song_have_a_name
    assert_equal("Born to be Wild", @song1.name)
  end

end

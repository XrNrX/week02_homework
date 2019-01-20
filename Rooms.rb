class Rooms

  attr_reader :room, :songs, :capacity
  attr_accessor :guests

  def initialize(room, capacity)
    @room = room
    @guests = []
    @songs = []
    @capacity = capacity

  end

  def add_guest(guest)
    @guests << guest
  end
  #
  def add_song(song)
    @songs << song
  end

  def remove_guest(guest)
    @guests.delete(guest)
  end

  def count_guests(guest)
    @guests.count(guest)
  end

  def check_capacity(guest)
    if @capacity > @guests.count
      @guests.pop(guest)
      end
    end
  end

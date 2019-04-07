require "pry"

class Song
  #class /////////////
  @@all = []

  #instance //////////////
  attr_accessor :name, :artist

  def initialize(name)
    # class //////////////

    @@all << self

    # instance ///////////
    @name = name

  end

  def self.all
    @@all
  end

  def artist_name
    self&.artist&.name
  end

end

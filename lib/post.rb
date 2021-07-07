require "pry"

class Post

  #class ///////////////
  @@all = []

  def self.all
    @@all
  end

  #instance /////////////
  attr_accessor :author, :title
  #attr_reader :title

  def initialize(title)

    #instance ///////////
    @title = title

    #class //////////////
    @@all << self


  end

  def author_name
    self&.author&.name
  end


end

# ps1 = Post.new("Why you don't get enough sleep")
# ps2 = Post.new("Because my bed is lumpy")
# jack = Author.new("Jack")
# ps1.author = jack
#binding.pry
"stuff"

require "pry"

class Author
  # class ////////////
  def self.post_count
    Post.all.size
  end

  # instance /////////
  attr_accessor :name
  attr_reader :posts

  def initialize(name)
    # class ////////////


    # instance /////////
    @name = name
    @posts = []
  end

  def add_post(post)
    post.author = self
    @posts << post
  end

  def add_post_by_title(title)
    new_post = Post.new(title)
    self.add_post(new_post)
  end

end

# ps1 = Post.new("Why you don't get enough sleep")
# ps2 = Post.new("Because my bed is lumpy")
# jack = Author.new("Jack")
# ps1.author = jack
#binding.pry

"stuff"

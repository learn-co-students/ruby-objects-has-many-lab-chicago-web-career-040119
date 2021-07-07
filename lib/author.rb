class Author

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def posts
    @@all
  end

  def add_post(title)
    title.author = self
    @@all << title
  end

  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    @@all << post
  end

  def self.post_count
    Post.all.count
  end



end

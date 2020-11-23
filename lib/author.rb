class Author
    
    attr_accessor :name, :post

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def posts
        Post.all.select {|post| post.author == self}
    end

    def add_post(post_obj)
        post_obj.author = self
    end

    def add_post_by_title(post_title)
        new_post = Post.new(post_title)
        new_post.author = self
    end

    def self.post_count
        Post.all.length
    end

end
class Post

    attr_accessor :title, :message, :author

    @@all = []

    def initialize(title)
        @title = title
        @message = message
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
        self.author.name if self.author
    end


end

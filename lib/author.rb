class Author

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        self.class.all.push(self)
    end

    def self.all
        @@all
    end

    def posts
        Post.all.select{|post| post.author == self}
    end

    def add_post(post_to_add)
        post_to_add.author = self
    end

    def add_post_by_title(title)
        Post.new(title, self)
    end

    def self.post_count
        Post.all.size
    end


end
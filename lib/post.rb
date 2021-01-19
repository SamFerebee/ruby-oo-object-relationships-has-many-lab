class Post

    attr_accessor :author, :title
    @@all = []

    def initialize(title, author = nil)
        @title = title
        self.class.all.push(self)
        @author = author
    end

    def self.all
        @@all
    end

    def author_name
        if author == nil
            return nil
        else
            author.name
        end
    end

end
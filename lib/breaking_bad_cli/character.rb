class Character

    attr_accessor :name, :nickname, :portrayed
    @@all = []
    
    def initialize(name, nickname, portrayed)
        @name = name
        @nickname = nickname
        @portrayed = portrayed
        save
    end
    
    def save
        @@all << self
    end

    def self.all
        @@all
    end
end
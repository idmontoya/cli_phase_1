class Character

    attr_accessor :name, :occupation, :nickname, :portrayed
    @@all = []
    
    def initialize(name, occupation, nickname, portrayed)
        @name = name
        @occupation = occupation
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
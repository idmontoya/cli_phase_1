class Character

    attr_accessor :name, :nickname, :portrayed
    @@all = []
    
    def initialize(character_hash)
        character_hash.each do |key, value|
            self.send("#{key}=", value)
        end
        save
    end
    
    def save
        @@all << self
    end

    def self.all
        @@all
    end
end
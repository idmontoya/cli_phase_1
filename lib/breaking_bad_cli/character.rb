class Character

    attr_accessor :name, :nickname, :portrayed, :occupation, :appearance, :img
    @@all = []
    
    def initialize(character_hash)
        character_hash.each do |key, value|
            self.send("#{key}=", value) if self.respond_to?("#{key}=")
        end
        save
    end
    
    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_selection(character_name)
        self.all.detect do |character|
            character.name == character_name
        end
    end
end
class API
    
    def self.get_data
        response = RestClient.get('https://www.breakingbadapi.com/api/characters')
        data = JSON.parse(response.body)
        # :name, :nickname, :portrayed
        data.each do |character|
            Character.new(character["name"], character["nickname"], character["portrayed"])
            #binding.pry
        end
        #binding.pry
    end

    def self.load_data
        load_characters
    end
end
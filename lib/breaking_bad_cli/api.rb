class API
    
    def self.get_data
        response = RestClient.get('https://www.breakingbadapi.com/api/characters')
        character_list = JSON.parse(response)
        # :name, :occupation, :nickname, :portrayed
        character_list.each do |character|
            Character.new(character["name"], character["occupation"], ["nickname"], ["portrayed"])
        end
        #binding.pry
    end
end
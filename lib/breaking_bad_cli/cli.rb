class CLI 
    
    def run
        puts "-----------------------------------------------------------------"
        puts "Welcome to Breaking Bad character information! What is your name?"
        puts "-----------------------------------------------------------------"
        API.get_data
        input = user_input
        greet(input)
        
    end

    def user_input
        gets.strip
    end

    def greet(name)
        puts "Hello #{name}, which Breaking Bad character do you want to learn about? Enter list to see list or enter exit to exit"
        menu
    end

    def menu
        selection = user_input
        if selection == "list"
            list_characters
            menu 
            #print character
        elsif selection == "exit"
            goodbye
            #exit application
        else
            invalid
            #invalid message and bring back to beginning to choose again
        end
    end

    def goodbye
        puts "Have a nice day!"
    end

    def invalid
        puts "Please try again."
        menu
    end

    def list_characters
        Character.all.each.with_index(1) do |character, index|
            puts "#{index}. #{character.name}"
        end
        select_character
    end

    def select_character
        puts "Please enter which character to learn about."
        selection = user_input
        character_details(selection)
    end

    def character_details(character)
        puts "#{character}"
        
    end
end   
    
    
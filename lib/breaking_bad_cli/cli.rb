class CLI 
    
    def run
        puts ""
        puts ""
        puts "-----------------------------------------------------------------"
        puts "Welcome to Breaking Bad character information! What is your name?"
        puts "-----------------------------------------------------------------"
        puts ""
        API.get_data
        input = user_input
        greet(input)
        
    end

    def user_input
        gets.strip
    end

    def greet(name)
        puts ""
        puts "-------------------------------------------------------------------"
        puts "Hello #{name}, which Breaking Bad character do you want to learn about?"
        puts "" 
        puts "Enter 'm' for list or enter 'x' to exit."
        puts "-------------------------------------------------------------------"
        puts ""
        menu
    end

    def menu
        selection = user_input
        if selection == "m"
            list_characters
            menu 
            #print character
        elsif selection == "x"
            goodbye
            #exit application
        else
            invalid
            #invalid message and bring back to beginning to choose again
        end
    end

    def goodbye
        puts ""
        puts "----------------------------------------"
        puts "Have a great day! Hope to see you again!"
        puts "----------------------------------------"
        puts ""
    end

    def invalid
        puts ""
        puts "-----------------------"
        puts "Please try again."
        puts ""
        puts "Enter 'm' to see list!"
        puts "-----------------------"
        puts ""
        menu
    end

    def list_characters
        Character.all.each.with_index(1) do |character, index|
            puts "#{index}. #{character.name}"
        end
        select_character
    end

    def select_character
        puts ""
        puts ""
        puts "-------------------------------------------------"
        puts "Please enter the character's name to learn about."
        puts ""
        puts "Enter 'm' for list or 'x' to exit."
        puts "-------------------------------------------------"
        puts ""
        puts ""
        selection = user_input
        if Character.find_by_selection(selection)
            character = Character.find_by_selection(selection)
        else 
            character = selection
        end
        
        character_details(character)
    end

    def character_details(character)
        #binding.pry
        if character == "exit"
            goodbye
        elsif character.class == Character
        puts ""
        puts ""
        puts "-------------------------------------------------"
        puts "Name: #{character.name}"
        puts "Nickname: #{character.nickname}"
        puts "Portrayed: #{character.portrayed}"
        puts "Occupation: #{character.occupation}"
        puts "Appearance: #{character.appearance}"
        puts "Img: #{character.img}"
        puts "-------------------------------------------------"
        puts ""
        puts ""
        puts "-------------------------------------------------"
        puts "Enter 'm' for list or 'x' to exit."
        puts "-------------------------------------------------"
        puts ""
        puts ""
        else
            invalid
        end
    end
end   
    
    
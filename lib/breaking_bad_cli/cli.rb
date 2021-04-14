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
            print_characters
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
        Character.each.with_index(1) do |character, index|
            puts "#{index}. #{character}"
        end
    end

    
end   
    
    
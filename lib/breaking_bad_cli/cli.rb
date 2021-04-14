class CLI 
    
    def start
        puts "Welcome to Breaking Bad! What is your name?"
        input = user_input
        greet(input)
    end

    def user_input
        gets.strip
    end

    def greet(name)
        puts "Hello #{name}, which Breaking Bad character do you want to learn about?"
    end

    def menu
         selection = user_input
        if selection == "b"
            #print character
        elsif selection == "exit"
            #exit application
        else
            #invalid message and bring back to beginning to choose again
        end
    end

    def goodbye
        
    end
end   
    
    
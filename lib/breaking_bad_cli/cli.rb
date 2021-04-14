class CLI 
    
    def start
        puts "Welcome to Breaking Bad! What is your name?"
        input = user_input
        greet(input)
        menu
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
        puts "Try again"
        menu
    end
end   
    
    
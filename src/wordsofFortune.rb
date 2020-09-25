
# Pseudcode 

# Display welcome mesage "Welcome Words of Fortune
# Ask user if they want to play (Y/N)
# Add game instructions
# Word puzzle category and question appear
# Ask the user to spin the wheel button to start and to reveal the amount. 
# - five seconds timer count down 
# Display the amount of the wheel
# User guess a letter
#   - If correctly guess letter appear. 
#   - Add the letter to the value from the wheel
# Display scoreboard
# Keep guessing until the puzzle is solve


require 'colorize'

# Initalise title page

    def welcome
        puts ""
        puts ""
        puts ""
        puts ""
        puts "                         Welcome to                       "
        puts ""

        puts "░██╗░░░░░░░██╗░█████╗░██████╗░██████╗░░██████╗  ░█████╗░███████╗".green
        puts "░██║░░██╗░░██║██╔══██╗██╔══██╗██╔══██╗██╔════╝  ██╔══██╗██╔════╝".red
        puts "░╚██╗████╗██╔╝██║░░██║██████╔╝██║░░██║╚█████╗░  ██║░░██║█████╗░░".yellow
        puts "░░████╔═████║░██║░░██║██╔══██╗██║░░██║░╚═══██╗  ██║░░██║██╔══╝░░".cyan
        puts "░░╚██╔╝░╚██╔╝░╚█████╔╝██║░░██║██████╔╝██████╔╝  ╚█████╔╝██║░░░░░".blue
        puts "░░░╚═╝░░░╚═╝░░░╚════╝░╚═╝░░╚═╝╚═════╝░╚═════╝░  ░╚════╝░╚═╝░░░░░".white


        puts "███████╗░█████╗░██████╗░████████╗██╗░░░██╗███╗░░██╗███████╗".green
        puts "██╔════╝██╔══██╗██╔══██╗╚══██╔══╝██║░░░██║████╗░██║██╔════╝".red
        puts "█████╗░░██║░░██║██████╔╝░░░██║░░░██║░░░██║██╔██╗██║█████╗░░".yellow
        puts "██╔══╝░░██║░░██║██╔══██╗░░░██║░░░██║░░░██║██║╚████║██╔══╝░░".cyan
        puts "██║░░░░░╚█████╔╝██║░░██║░░░██║░░░╚██████╔╝██║░╚███║███████╗".blue
        puts "╚═╝░░░░░░╚════╝░╚═╝░░╚═╝░░░╚═╝░░░░╚═════╝░╚═╝░░╚══╝╚══════╝".white
        puts ""
        puts "                      by Tracey Tran                      "
        puts ""
        puts ""
        puts ""
        puts ""
    end

    welcome
 

    # Determine whether response is 'like yes'(=>true) or 'like no'(=>false) or neither(=>try again)

    puts "\nReady to play? (Y/N)".colorize(:green)

  
      def ready_to_play
        case yes? response
          when "y", "Y", "yes", "Yes", "YES"
            return true
          when "n", "N", "no", "No", "NO"
            return false
          else
            puts "Please enter yes or no:".colorize(:light_red)
            yes?(gets.chomp)
        end
      end
      

    def ready_to_play
        if not yes?(gets.chomp)
        puts "Okay. See you next time!".colorize(:green)
        exit
      end
    end 

    # ////// games rules /////

    # def how_to_play
    #     puts "Spin the win and naming the letters to guess the word puzzle"
    #     puts "inc"
    # end

    

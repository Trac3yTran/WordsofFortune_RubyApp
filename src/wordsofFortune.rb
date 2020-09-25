
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
 

   
    def ready_to_play
      puts "Ready to play? (Y/N)".colorize(:green)
      play = gets.chomp.to_s  
        if play == 'y' || play == 'Y' || play == 'yes'
          puts ""
          puts "please proceed!"
          # add method how to play
        elsif play == 'n' || play == 'N' || play == 'no'
          puts ""
          puts "Okay, see you next time"
        else
          puts "Please enter y or n:"
          ready_to_play
        end
    end   

    ready_to_play
  
    # ////// games rules /////

    # def how_to_play
    #     puts "Spin the win and naming the letters to guess the word puzzle"
    #     puts "inc"
    # end

    

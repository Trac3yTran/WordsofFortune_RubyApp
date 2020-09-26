
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
require 'tty-prompt'
require 'tty-spinner'

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
          elsif play == 'n' || play == 'N' || play == 'no'
            puts ""
            puts "Okay, see you next time!"
            exit  
          else
            puts "Please enter y or n:"
            ready_to_play
          end
      end   

      ready_to_play


    # ////// games instructions /////


        def instructions
            puts "                   How to play:       ".yellow
            puts ""
            puts "Spin the win and name the letters to guess the word puzzle".yellow
            puts ""
            puts "Each correct guess will reveal those letters and earn a dollar value from the wheel".yellow
            puts ""
            puts "Guess incorrectly and spin the wheel again".yellow
            puts ""
            puts "Repeat until word puzzle is solved".yellow
        end

        instructions
        sleep 0.5
        system 'clear'

#  /// spinner ////


      puts "Spinning the wheel"
     

      begin
        def attack_meter
            attack_meter_array = [
                "|5|...........................".green,
                "...|10|.......................".red,
                "......|15|....................".yellow,
                ".........|20|.................".blue,
                "............|25|.......".white,
                "...............|30|...........".light_blue,
                "..................|35|........".green,
                "...............|40|...........".red,
                "............|$45|..............".yellow,
                ".........|50|.............".blue,
                "......|55|....................".white,
                "...|100|.......................".green
            ]
    
            i = 1
            while i < 2
                attack_meter_array.each do | meter | print meter + "\r"
                  sleep 0.25
                end
                i += 1
            end
          end 

          attack_meter
    
            spinner = TTY::Spinner.new("[:spinner] Loading ..........................".cyan, format: :pulse_2)
            spinner.auto_spin 
            sleep(2) 
            spinner.stop 
        end


        points = ["$5", "$10", "$15", "$20", "$25", "$30", "$35", "$40", "$45", "$50", "$55", "$100"]
        puts points.sample.to_s.green

        

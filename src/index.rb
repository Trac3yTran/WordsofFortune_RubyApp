
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
  
    # ////// Menu list /////

    module Menu 
      def self.menu_list 
      prompt = TTY::Prompt.new
      choices = [
          {name: 'Play Game', value: 1},
          {name: 'Instructions', value: 2},
          {name: 'Scoreboard', value: 3},
          {name: 'Exit', value: 4}
        ]
      
      user_input = prompt.select("Select an action?", choices)

      case user_input
      when 1
        # Functionality for Choice 1 goes here
        puts "Starting your game..".green
        
      when 2
        # Functionality for Choice 2 goes here
        
        puts "Loading your instructions...".green
        GameInstructions.steps
      when 3
        # Functionality for Choice 3 goes here
        puts "Loading the scoreboard..".green
      when 4
        # Functionality for Choice 3 goes here
        puts "Exiting application...".green
      end
    end 
    end 

    # ////// games instructions /////

    module GameInstructions
      def self.steps
          puts "              How to play:       ".yellow
          puts ""
          puts "Array meter will generate a dollar value.".yellow
          puts ""
          puts "Input a letter to guess from a world puzzle".yellow
          puts ""
          puts "Correct guess will earn a dollar value".yellow
          puts ""
          puts "Incorrect guess will go back to the array meter".yellow
          puts ""
          puts "Repeat until word puzzle is solved".yellow
      end
    end

    Menu.menu_list
  

      # ////// Spinner  /////


      puts "Array meter generating random dollar value"
      begin
        def array_meter
            array_meter = [
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
                array_meter.each do | meter | print meter + "\r"
                  sleep 0.25
                end
                i += 1
            end
          end 

          array_meter
    
            spinner = TTY::Spinner.new("[:spinner] Loading ..........................".cyan, format: :pulse_2)
            spinner.auto_spin 
            sleep(2) 
            spinner.stop 
        end
         
  

        # ////// Array meter /////


        points = ["$5", "$10", "$15", "$20", "$25", "$30", "$35", "$40", "$45", "$50", "$55", "$100"]
        puts points.sample.to_s.green

    

        # ////// word generator /////
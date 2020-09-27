

require 'colorize'
require 'tty-prompt'
require 'tty-spinner'


module MainLayout
    def self.start
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

                #  //// Clear Terminal ////

                    def self.clear
                        print "\e[2J\e[f"
                    end
    
      
                #  //// Menu list ////

                def self.menu_list 
                    prompt = TTY::Prompt.new
                    choices = [
                        {name: 'About', value: 1},
                        {name: 'Play Game', value: 2},
                        {name: 'Instructions', value: 3},
                        {name: 'Scoreboard', value: 4},
                        {name: 'Exit', value: 5}
                    ]
                    
                    user_input = prompt.select("Select an action?", choices)

                    case user_input
                    when 1
                    puts ""
                    puts "Words of Fortune is a fun educational word-guessing game to be played in a command-line interface." 
                    puts "The purpose of Words of Fortune is to provide a fun way of learning vocabulary and testing your general knowledge."
                    puts ""
                    sleep(0.5)
                    MainLayout.menu_list
                    when 2
                    puts "Starting your game..".green
                    MainLayout.clear
                    MainLayout.array_display 
                    when 3
                    puts ""
                    MainLayout.clear
                    puts "Loading your instructions...".green
                    sleep(0.5)
                    MainLayout.steps
                    when 4
                    puts "Loading the scoreboard..".green
                    when 5
                    puts "Exiting application...".green
                    end
                end

                # //// Instructions ////

                # def self.steps
                #     puts ""
                #     puts ""
                #     puts "              How to play:       ".yellow
                #     puts ""
                #     puts "Array meter will randomly generate the prize you will be playing for".yellow
                #     puts ""
                #     puts "Input a letter to guess from a word puzzle".yellow
                #     puts ""
                #     puts "You will have 7 guesses until the game is over".yellow
                #     puts ""
                #     puts "Repeat until word puzzle is solved".yellow
                # end

    

                # ///// Array meter display ////
                
                def self.array_display   
                    puts "You are playing for : "
                    puts ""
                    puts ""
                    array_meter = [
                        "|$5|.............................".green,
                        "...|$10|.........................".red,
                        "......|$70|......................".yellow,
                        ".........|$60|...................".blue,
                        "............|$50|................".white,
                        "...............|$30|.............".light_blue,
                        "..................|$20|..........".green,
                        "...............|$40|.............".red,
                        "............|$80|...............".yellow,
                        ".........|$90|...................".blue,
                        "......|$100|......................".white,
                        "...|$200|........................".green
                    ]
            
                        i = 1
                        while i < 2
                            array_meter.each do | meter | print meter + "\r"
                              sleep 0.25
                        end
                        i += 1
                    end


                 # ///// Loading bar ////

                    spinner = TTY::Spinner.new("[:spinner] Loading.........................".cyan, format: :pulse_2)
                    spinner.auto_spin 
                    sleep(2) 
                    spinner.stop 
              
                # ///// Array dollar value generator ////
                
             
                    points = ["$5", "$10", "$20", "$30", "$40", "$50", "$60", "$70", "$80", "$90", "$100", "$200"]
                    puts ""
                    puts ""
                    puts points.sample.to_s.green
                    end

                MainLayout.clear  
          

           
            MainLayout.start
            MainLayout.menu_list
           

    end









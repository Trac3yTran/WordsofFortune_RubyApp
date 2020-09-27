
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
      
                #  //// Menu list ////

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
                    puts "Starting your game..".green
                    MainLayout.array_display    
                    when 2
                    puts "Loading your instructions...".green
                    MainLayout.steps
                    when 3
                    puts "Loading the scoreboard..".green
                    when 4
                    puts "Exiting application...".green
                    end
                end

                # //// Instructions ////

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

             
                # ///// Array meter display
                
                def self.array_display   
                    puts "Array meter generating random dollar value"
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


                    spinner = TTY::Spinner.new("[:spinner] Loading ..........................".cyan, format: :pulse_2)
                    spinner.auto_spin 
                    sleep(2) 
                    spinner.stop 
              

                    points = ["$5", "$10", "$15", "$20", "$25", "$30", "$35", "$40", "$45", "$50", "$55", "$100"]
                    puts points.sample.to_s.green
                end 


            MainLayout.start
            MainLayout.menu_list
    end









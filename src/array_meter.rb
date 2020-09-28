require 'colorize'
require 'tty-prompt'
require 'tty-spinner'


# ///// Array meter display ////

    module Generator
        def self.array_display   
            puts ""
            puts ""
            puts ""
            puts "                                                  You are playing for : "
            puts ""
            puts ""
            puts ""
            array_meter = [
                "............................................................................................|$5|.............................................................................................".green,
                " ...................................................................|$20|....................................................................................................................".red,
                ".....................................................................................................................|$70|...................................................................".yellow,
                "......................................................................................................................................................................|$60|..................".blue,
                " .....................................|$50|..................................................................................................................................................".white,
                " ...............................................................................................|$30|........................................................................................".light_blue,
                " ..................................................................................................|$20|.....................................................................................".green,
                "......................................................|$40|..................................................................................................................................".red,
                "..............................................................................................................................................|$80|..........................................".yellow,
                "....................................................|$90|....................................................................................................................................".blue,
                "............................................................................................|$100|...........................................................................................".white,
                "...............|$200|........................................................................................................................................................................".green
            ]

            i = 1
            while i < 2
                array_meter.each do | meter | print meter + "\r"
                    sleep 0.25
                end
            i += 1
        end

   

    # ///// Loading bar ////

            Layout.clear
            puts ""
            puts ""
            puts ""
            puts ""
            puts ""
            puts ""
            spinner = TTY::Spinner.new("[:spinner] Loading".cyan, format: :pulse_2)
            puts ""
            puts ""
            puts ""
            puts ""
            spinner.auto_spin 
            sleep(2) 
            spinner.stop 
            Layout.clear

    # ///// Array dollar value generator ////

            points = ["$5", "$10", "$20", "$30", "$40", "$50", "$60", "$70", "$80", "$90", "$100", "$200"]
            puts ""
            puts ""
            puts ""
            puts "For this round you will be playing for #{points.sample.to_s.green}. Goodluck!"
            puts ""
            puts ""
            puts ""
            sleep(0.5)
            end 
        end
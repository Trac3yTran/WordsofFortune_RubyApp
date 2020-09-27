
module Menu
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
            puts "About game here"
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
end
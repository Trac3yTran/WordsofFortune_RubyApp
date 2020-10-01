

module GameMenu
    def self.list 
        prompt = TTY::Prompt.new
        choices = [
            {name:'Play Again', value: 1},
            {name:'Exit', value: 2}
        ]

        user_input = prompt.select("Select an action?", choices)

        case user_input
        when 1

        View.clear
        puts "Starting your game..".green
        View.clear
        Generator.array_display
        game = Puzzle.new
        game.begin
        when 2
        puts "Exiting application...".green
        puts ""
        end
    end
end
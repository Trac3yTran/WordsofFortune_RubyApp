require 'colorize'
require_relative './instructions.rb'
require_relative './array_meter.rb'
require_relative './puzzle.rb'


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
        puts ""
        puts "Words of Fortune is a fun educational word-guessing game to be played in a command-line interface." 
        puts "The purpose of Words of Fortune is to provide a fun way of learning vocabulary and testing your general knowledge."
        puts ""
        sleep(0.5)
        Menu.menu_list
        when 2
        puts "Starting your game..".green
        Layout.clear
        Generator.array_display
        game = Puzzle.new
        game.begin
        when 3
        puts ""
        Layout.clear
        puts "Loading your instructions...".green
        sleep(0.5)
        Instructions.steps
        sleep(0.5)
        puts ""
        Menu.menu_list
        when 4
        puts "Loading the scoreboard..".green
        puts ""
        when 5
        puts "Exiting application...".greens
        puts ""
        end
    end
end


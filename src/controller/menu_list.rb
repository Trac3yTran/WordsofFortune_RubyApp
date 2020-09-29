require 'colorize'

require_relative '../model/instructions.rb'
require_relative '../model/array_meter.rb'
require_relative '../model/puzzle.rb'


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
        sleep(0.1)
        Menu.menu_list
        when 2
        puts "Starting your game..".green
        View.clear
        Generator.array_display
        game = Puzzle.new
        game.begin
        when 3
        puts ""
        View.clear
        puts "Loading your instructions...".green
        sleep(0.1)
        Instructions.steps
        sleep(0.5)
        puts ""
        Menu.menu_list
        when 4
        puts "Loading the scoreboard..".green
        Menu.menu_list
        puts ""
        when 5
        puts "Exiting application...".green
        puts ""
        end
    end
end
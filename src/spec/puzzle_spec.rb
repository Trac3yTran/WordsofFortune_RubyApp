require 'rspec'
require_relative '../model/puzzle.rb'

RSpec.describe Puzzle do
it 'should contain the random word arrays and meanings' do
    game_mechanics = Puzzle
    expect(game_mechanics.words).to eq         [
        ["sister", "A female sibling"],
        ["software", "Set of programs, which is designed to perform a well-defined function"],
        ["continent", "There are 7 of these large landmasses in the world"],
        ["morning", "The first or early part of the day, lasting from midnight to noon or from sunrise to noon"],
        ["galaxy", "Is a huge collection of gas, dust, and billions of stars and their solar systems"],
    ]
end

end

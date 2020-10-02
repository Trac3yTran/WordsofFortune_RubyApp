
require 'rspec'
require_relative '../model/library.rb'

RSpec.describe Library do
it 'should contain the random word arrays and clue' do
    puzzle = Library.words
    expect(puzzle).to eq [
        ["sister", "A female sibling"],
        ["software", "Set of programs, which is designed to perform a well-defined function"],
        ["continent", "There are 7 of these large landmasses in the world"],
        ["morning", "The first or early part of the day, lasting from midnight to noon or from sunrise to noon"],
        ["galaxy", "Is a huge collection of gas, dust, and billions of stars and their solar systems"]
]

end
end


RSpec.describe Library do
    it 'include a string from the random word' do
      guess = Library.words
      expect("sister").to include("s")
    
end
end
    
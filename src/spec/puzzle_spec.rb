
require 'rspec'
require_relative '../model/puzzle.rb'

RSpec.describe Puzzle do
it 'should contain the random word arrays and meanings' do
    expect(@words).to eq [["sister", "A female sibling"], ["software", "Set of programs, which is designed to perform a well-d...n"], ["galaxy", "Is a huge collection of gas, dust, and billions of stars and their solar systems"]]
end

end
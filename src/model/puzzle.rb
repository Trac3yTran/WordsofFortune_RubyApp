require 'colorize'

require_relative '../controller/gamemenu.rb'


    class Puzzle
        def initialize
          @word = words.sample
          @lives = 7
          @word_teaser = ""
          @word.first.size.times do
          @word_teaser += "_ "
          end
      end

  # begin game 
      def begin
        # ask user for a letter
        puts ""
        puts ""
        puts "New game started... your word is #{ @word.first.size } characters long".yellow
        puts ""
        puts ""
        puts "Clue: #{ @word.last }".yellow
        puts ""
        puts ""
        puts "To exit game at any point type 'exit'"
        puts ""
        puts ""
        print_teaser
        puts ""
        puts ""
        make_guess
      end
   

      # library
      def self.words
        [
          ["sister", "A female sibling"],
          ["software", "Set of programs, which is designed to perform a well-defined function"],
          ["continent", "There are 7 of these large landmasses in the world"],
          ["morning", "The first or early part of the day, lasting from midnight to noon or from sunrise to noon"],
          ["galaxy", "Is a huge collection of gas, dust, and billions of stars and their solar systems"],
      ]
      end


      # teaser
        def print_teaser last_guess = nil
          update_teaser(last_guess) unless last_guess.nil?
          puts @word_teaser
        end

        def update_teaser last_guess
          new_teaser = @word_teaser.split
          new_teaser.each_with_index do |letter, index|
            # replace blank values with guessed letter if matches letter in word
            if letter == '_' && @word.first[index] == last_guess
              new_teaser[index] = last_guess
            end
        end

          @word_teaser = new_teaser.join(' ')
          end


          # Guess a letter
            def make_guess
                if @lives > 0
                  puts ""
                  puts "Enter a letter"
                  guess = gets.chomp
                  good_guess = @word.first.include? guess

                # exit the game

                if guess == "exit"
                  puts "Thank you for playing!"
                elsif good_guess
                  puts ""
                  puts "You are correct!".green
                  puts ""
                  print_teaser guess
                
                  if @word.first == @word_teaser.split.join
                    puts ""
                    puts "Congratulations... you have won this round!".green
                    puts ""
                    GameMenu.list
                    puts ""
                  else
                    make_guess
                  end

                    else
                      @lives -= 1
                      puts ""
                      puts "Sorry... you have #{ @lives } lives left. Try again!".red 
                      puts ""
                      make_guess
                    end

                  else
                    puts ""
                    puts "Game over... better luck next time!".red
                    puts ""
                  end
        end

end


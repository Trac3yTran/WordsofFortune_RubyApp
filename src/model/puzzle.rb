
require 'colorize'
require_relative 'library'

      class Puzzle
           #create instance variables to be access different methods within this class 
           
            def initialize

              @word = Library.sample
              # limited lives more than 7 times the game will end 
              @lives = 7
              # show how many characters there in a puzzle. As the user gets the letter correct it will fill them out with the approapriate letter
              @word_teaser = ""
              # using the @word.first to loop over multiple times. The number of time it gets loop over depending on the length of the word (.size and .times to run the script and return a string with "_"
              @word.first.size.times do
             @word_teaser += "_ "
              end
            end
  
      
              # Begin the game
              # Tell user that new game has started and provide a clue
              def begin
                sleep(0.5)
                puts ""
                puts "New game started... your word is #{ @word.first.size } characters long"
                puts ""
                puts ""
                sleep(0.25)
                puts "Clue: #{ @word.last }".yellow
                puts ""
                puts ""
                print_teaser
                puts ""
                puts ""
                make_guess
              end

              #  User enter a letter and make a guess
              def make_guess
                if @lives > 0

                 puts "Enter a letter"

                  guess = gets.chomp
                  # If letter is not part of the word then remove from letters array
                 #include? will check the contents of the string to see if the string passing is found within that string
                #  assign a true and false value to the variable good_guess
                  # good_guess = @word.first.include? guess
                  good_guess = Library.good_guess? guess
      
                  if guess == "exit"
                    puts "Thank you for playing!"
                  elsif good_guess
                    puts "You are correct!".green
      
                    print_teaser guess
      
                     if @word.first == @word_teaser.split.join
                        puts "Congratulations... you have won this round!".green
                       
                      else
                        make_guess
                      end
                    else
                      @lives -= 1
                      puts "Sorry... you have #{ @lives } lives left. Try again!".red
                      make_guess
                    end
                  else
                    puts "Game over... better luck next time!".red
                  end
            end
    
        
  
                  def print_teaser last_guess = nil
                    update_teaser(last_guess) unless last_guess.nil?
                    puts @word_teaser
                  end
  

                  def update_teaser last_guess
                    new_teaser = @word_teaser.splitl
                
                    new_teaser.each_with_index do |letter, index|
                      # replace blank values with guessed letter if matches letter in word
                      if letter == '_' && @word.first[index] == last_guess
                        new_teaser[index] = last_guess
                      end
                  end
  
              @word_teaser = new_teaser.join(' ')

            end

  
  end
 

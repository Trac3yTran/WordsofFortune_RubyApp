class Puzzle

    def initialize
      @word = words.sample
      @lives = 7
      @word_teaser = ""
  
      @word.first.size.times do
        @word_teaser += "_ "
      end
    end
  
    def words
        [
          ["jogging", "Is a form of trotting or running at a slow or leisurely space"],
          ["payment", "the action or process of paying someone or something or of being paid"],
          ["continent", "There are 7 of these large landmasses in the world"],
          ["cricket", "A ball and bat game played by gentlmen"],
          ["celebrate", "Acknowledge a significant or happy day or event with a social gathering or enjoyable activity."],
        ]
    end
  
    def print_teaser last_guess = nil
      update_teaser(last_guess) unless last_guess.nil?
      puts @word_teaser
    end
  
    def update_teaser last_guess
      new_teaser = @word_teaser.split
  
      new_teaser.each_with_index do |letter, index|
        # replace blank values with guessed letter if matches letter in word
        if letter == '_' && @word.first[index] == last_guess
          puts ""
          new_teaser[index] = last_guess
        end
      end
  
      @word_teaser = new_teaser.join(' ')
    end
  
    def make_guess
      if @lives > 0
        puts "Enter a letter"
        guess = gets.chomp
  
        good_guess = @word.first.include? guess
  
        if guess == "exit"
          puts "Thank you for playing!"
        elsif good_guess
          puts "You are correct!"
  
          print_teaser guess
  
          if @word.first == @word_teaser.split.join
            puts "Congratulations... you have won this round!"
          else
            make_guess
          end
        else
          @lives -= 1
          puts "Sorry... you have #{ @lives } lives left. Try again!"
          make_guess
        end
      else
        puts "Game over... better luck next time!"
      end
    end
  
    def begin
      # ask user for a letter
      puts "New game started... your word is #{ @word.first.size } characters long"
      puts ""
      sleep (0.25)
      puts "To exit game at any point type 'exit'"
      puts ""
      print_teaser
      puts ""
      puts "Clue: #{ @word.last }"
  
      make_guess
    end
  
  end
  
  game = Puzzle.new
  game.begin

class Puzzle

        def initialise
            @letters = ('a'..'z').to_a    
            @word = words.sample
        end

      
        def words
            [
              ["jogging", "Is a form of trotting or running at a slow or leisurely space"],
              ["address", "The particulars of the place where someone lives or an organization is situated"],
              ["continent", "There are 7 of these large landmasses in the world"],
              ["cricket", "A ball and bat game played by gentlmen"],
              ["celebrate", "Acknowledge a significant or happy day or event with a social gathering or enjoyable activity."],
            ]
        end


        def teaser
            word_teaser = ""
            @word.first.size.times do
                word_teaser += "_"
            end    
     
            puts word_teaser


        def begin
            #ask user for a letter
            puts "New game started.. your word is #{ @word.first.size } characters long"
            puts "Clue: #{ @word.last }"
            puts "Enter a letter"
            guess = gets.chomp
        end


 end    

 game = Puzzle.new
 game.begin

end

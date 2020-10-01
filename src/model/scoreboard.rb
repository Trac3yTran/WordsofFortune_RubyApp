
require 'terminal-table'

class Scoreboard
        def self.leaderboard
            rows = []
            rows << ['Tracey', 200]
            rows << ['Andrew', 100]
            rows << ['Joey', 50]
        table = Terminal::Table.new :headings => ['Name', 'Amount'], :rows => rows
        end 

end

leaderboard = Scoreboard.new 
puts Scoreboard.leaderboard 

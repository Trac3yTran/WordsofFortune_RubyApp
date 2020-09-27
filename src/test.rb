

def start_player
    player_name = PROMPT.ask('What is your name?', default: ENV['USER']).downcase
    User.save_login_user(player_name)
  end
  
  def save_player
    User.find_or_create_player
  end
  
  def quit
    puts ColorizedString["THANK YOU!"].black.on_yellow.blink
  end
  
  def menu_option
    category = PROMPT.select("#{User.login_user.capitalize}, choose your Crazy Anagram game or scoreboard from the menu", %w[Random\ letters Crazy\ words Top\ Scoreboard Top\ Player\ Scoreboard Settings About Quit])
    if category == 'Random letters'
        ready_response = PROMPT.select("You will have #{Game.time_settings} seconds to find as many anagrams as you can. Ready?", %w[Yes Menu])
        ready_response == "Yes" ? play_game("letters") : menu_option
      elsif category == 'Crazy words'
        ready_response = PROMPT.yes?('')
        ready_response = PROMPT.select("You will enter two crazy words. They will return a third crazy word. You will have #{Game.time_settings} seconds to find as many anagrams as you can! Ready?", %w[Yes Menu])
        ready_response == "Yes" ? play_game("associations") : menu_option
      elsif category == 'Top Scoreboard'
        Game.ranking_per_user_score
      elsif category == 'Top Player Scoreboard'
        Game.ranking_best_user_score
      elsif category == 'Settings'
        setting_options
      elsif category == 'About'
        puts File.read("README.md")
        menu_option
      else quit
    end
  end
  
  def setting_options
    category = PROMPT.select("", %w[Time Player\ name Menu])
    case category
      when "Time"
        set_up_time_settings
      when "Player name"
        User.update_user_name
      when "Menu"
        menu_option
    end
  end
  
  def set_up_time_settings
    time = PROMPT.select("#{User.login_user.capitalize}, select how much time you want to play:", %w[10\ seconds 30\ seconds 1\ minute 2\ minutes])
    case time
    when "10 seconds"
        Game.set_time_settings(10)
      when "30 seconds"
        Game.set_time_settings(30)
      when "1 minute"
        Game.set_time_settings(60)
      when "2 minutes"
        Game.set_time_settings(120)
    end
    menu_option
  end
  
  def play_again(game)
    again_response = PROMPT.select('', %w[Play\ again Scoreboard Menu Quit])
    if again_response == "Play again"
      play_game(game)
    elsif again_response == "Scoreboard"
      Game.ranking_per_user_score
    elsif again_response == "Menu"
      menu_option
    else quit
    end
  end
  
  def start
    puts ColorizedString[
    "
    ╔═╗╦═╗╔═╗╔═╗╦ ╦  ╔═╗╔╗╔╔═╗╔═╗╦═╗╔═╗╔╦╗╔═╗
    ║  ╠╦╝╠═╣╔═╝╚╦╝  ╠═╣║║║╠═╣║ ╦╠╦╝╠═╣║║║╚═╗
    ╚═╝╩╚═╩ ╩╚═╝ ╩   ╩ ╩╝╚╝╩ ╩╚═╝╩╚═╩ ╩╩ ╩╚═╝"].blue.on_red.blink
    puts "by Alberto Carreras"
    sleep(1)
    puts "\nWelcome to Crazy Anagrams. Have lots of fun finding CRAZY ANAGRAMS!\n "
  
    sleep(2)
    start_player
    menu_option
  end
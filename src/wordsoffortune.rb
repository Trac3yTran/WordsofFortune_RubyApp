#This file holds all the methods related to the user flow through the app.

#Depencies
require 'colorize'
require 'tty-prompt'
require 'tty-spinner'

require_relative './layout.rb'
require_relative './menu_list.rb'
# require_relative './puzzle.rb'



# Intialising the title page and menu options
# user select between about, play game, scoreboard ane exit.

Layout.title
Menu.menu_list
# Puzzle.begin
#Deployment of game


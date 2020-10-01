
#This file holds all the methods related to the user flow through the app.

#Depencies
require 'colorize'
require 'tty-prompt'
require 'tty-spinner'

require_relative '../view/view.rb'
require_relative './menu_list.rb'
song = Music.new('../sound/Drum_Run.mp3')
song.play

# Intialising the title page and menu options
# user select between about, play game, scoreboard ane exit.

View.title
Menu.menu_list

#Deployment of game accessing via the menu list
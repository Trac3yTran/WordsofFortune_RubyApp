#This file holds all the methods related to the user flow through the app.


require 'colorize'
require 'tty-prompt'
require 'tty-spinner'

require_relative './main_layout.rb'
require_relative './menu_list.rb'



MainLayout.start    
Menu.menu_list

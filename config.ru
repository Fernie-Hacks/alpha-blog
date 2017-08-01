# This file is used by Rack-based servers to start the application.

#Heroku

#git push heroku master

#Runs migrations files that have not been run in production yet.
#heroku run rake db:migrate


require_relative 'config/environment'

run Rails.application

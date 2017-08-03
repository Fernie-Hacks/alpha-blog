# This file is used by Rack-based servers to start the application.

#Heroku

#git push heroku master

#Runs migrations files that have not been run in production yet.
#heroku run rake db:migrate

#Git
#git checkout -b "branch_name"
# => Creates a new branch

#git branch
# => Shows all branches and puts * on active branch.

#git checkout branch_name
# => Switches to 'branch_name'

#git branch -d branch_name
# => Deletes 'branch_name' works if merge has already occured otherwise use -D

require_relative 'config/environment'

run Rails.application

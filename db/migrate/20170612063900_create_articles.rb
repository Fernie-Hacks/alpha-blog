#Migration file created by rails commad:
# => 'rails generate migration create_articles'
class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      #Added title column
      t.string :title
    end
  end
end

#Once coloumns are added we can create DB schema by following rails command:
# => 'rake db:migrate'

#Two methods to update the DB schema
# => 1) Run rollback coomand to drop table and updae this file with new coloumns
# =>    'rake db:rollback'
# => 2)Create new migration file [PREFERED METHOD]
# =>    'rails generate migration add_description_to_articles'
# =>    Automatically created a new migration file with new timestamp

#Make sure to run migration files to heroku after deployment.
#heroku run rake db:migrate

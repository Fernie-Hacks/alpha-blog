#Rails uses the Active records pattern to communicate with a database.
#Ruby code gets transalated to SQL queries which is how app interacts with DB.
#The model is responsible for such communication
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end

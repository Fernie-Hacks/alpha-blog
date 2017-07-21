#Article class is a subclass/inherits from the ActiveRecord class
#The mapping that binds Active Record to articles DB is happening automaticlaly
#The binding can be overwritten where needed.
#Rails has now by default provided us with getters and setters for the table.
class Article < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 3, maximum: 50 }
  validates :description, presence: true, length: { minimum: 10, maximum: 300 }
end

#Test validations on rails console
#Create new article test the validation checks
# type $articleName.error.any? [Boolean]
#articleName.errors.full_messages
#Example outputs:
#Title can't be blank
#Title is too short (minimum is 3 characters)
#Description can't be blank
#Description is too short (minimum is 10 characters)

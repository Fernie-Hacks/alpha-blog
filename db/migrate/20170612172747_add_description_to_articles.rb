#File generated by calling:
# => 'rails generate migration add_description_to_articles'
# => Created an empty change method
# => We can add additional coloumns to our DB schema now
class AddDescriptionToArticles < ActiveRecord::Migration[5.1]
  def change
    #add_column method to add coloumns to specific tables
    # => add_column :table, :coloumnName, :type
    add_column :articles, :description, :text
    add_column :articles, :created_at, :datetime
    add_column :articles, :updated_at, :datetime
  end
end


#Running 'rake db:migrate' at this time makes rails run only new migration files

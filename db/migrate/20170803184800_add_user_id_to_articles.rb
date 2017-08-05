#Adding user_id to article for association and determine creator of article
#Foreign key has to be an integer

class AddUserIdToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :user_id, :integer
  end
end

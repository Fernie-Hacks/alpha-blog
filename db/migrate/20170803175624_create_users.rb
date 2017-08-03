# Created with command 'rails generate migration create_users'

class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.timestamps
    end
  end
end


#Ran rake db:migrate to create schema for this new table.

class User < ActiveRecord::Base
  has_many :articles
  #Forces save action to convert email to all lowercase prior to commiting change in DB.
  before_save{ self.email = email.downcase }
  validates :username, presence: true,
            uniqueness: {case_sensitive: false},
            length: { minimum: 3, maximum: 25 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 105},
            uniqueness: { case_sensitive: false },
            format: { with: VALID_EMAIL_REGEX }

end

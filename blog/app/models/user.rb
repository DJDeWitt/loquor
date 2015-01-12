class User < ActiveRecord::Base

  #associations
  has_many :comments
  has_many :articles, foreign_key: "author_id"
  has_secure_password


  #validations

end

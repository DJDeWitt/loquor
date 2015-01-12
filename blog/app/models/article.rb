class Article < ActiveRecord::Base
  #associations
  has_many :comments
  belongs_to :author, class_name: 'User'

  #validations

end

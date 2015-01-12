class Comment < ActiveRecord::Base

  #associations
  belongs_to :article
  belongs_to :author, class_name: 'User'

  #validations

end

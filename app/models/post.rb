class Post < ApplicationRecord
validates :title,  :presence => true
  validates :desc, :presence => true,
                    :length => { :minimum => 5 }		
end

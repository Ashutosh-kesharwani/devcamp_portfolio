class Topic < ApplicationRecord
  validates_presence_of :title
  #Association Has_many Where Blogs is Child and topic is Parent
  has_many :blogs
end

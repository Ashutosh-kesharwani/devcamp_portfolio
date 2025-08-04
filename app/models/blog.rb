class Blog < ApplicationRecord
  enum status: {draft: 0, published: 1}
  extend FriendlyId
  friendly_id :title, use: :slugged   # or use any other field like :name
  # Another way of writing validation
  # validates_presence_of :title 
  validates :title , :body , presence: true 

  #Association Has_many Where Blogs is Child and topic is Parent
  belongs_to :topic
end

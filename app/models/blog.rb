class Blog < ApplicationRecord
  enum status: {draft: 0, published: 1}
  # Another way of writing validation
  # validates_presence_of :title 
  validates :title , :body , presence: true 

  extend FriendlyId
  friendly_id :title, use: :slugged   # or use any other field like :name
end

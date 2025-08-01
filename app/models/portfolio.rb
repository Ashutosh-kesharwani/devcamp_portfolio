class Portfolio < ApplicationRecord
  validates :title ,:body ,:main_image,:thumb_image, presence: true 
  
  # This method will target an indiviual portfolio object as self lga hai , which is for class method
  # 1st way of writing 
  def self.angular 
    where(subtitle: 'Angular')
  end

  #2nd way  Using Custom Scopes here we use lambda function as it is used to 
  #keep all the encapsulated data
   scope :ruby_on_rails_portfolio_items, -> {where(subtitle: "Ruby on Rails")}
end

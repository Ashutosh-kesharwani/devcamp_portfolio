class Portfolio < ApplicationRecord
  
  include Placeholder
  validates :title ,:body ,:main_image,:thumb_image, presence: true 
  
  # This method will target an indiviual portfolio object as self lga hai , which is for class method
  # 1st way of writing 
  def self.angular 
    where(subtitle: 'Angular')
  end

  #2nd way  Using Custom Scopes here we use lambda function as it is used to 
  #keep all the encapsulated data
   scope :ruby_on_rails_portfolio_items, -> {where(subtitle: "Ruby on Rails")}

   #Ways of Adding -> Default-value  1st way : using migration default: value
   #2nd way using callbacks in model
   after_initialize :set_defaults
   def set_defaults
    # This self is reference to a new portfolio item that we create with form
    # ||= this is an shortcut for if self.main_image=nil than set it with  default value otherwise not change the existing value
    self.main_image ||= Placeholder.image_generator(height:'600',width: '400')
    self.thumb_image ||=  Placeholder.image_generator(height:'350',width: '200')
   end
end

module Placeholder
    extend ActiveSupport::Concern

    def self.image_generator(height: , width:)
      "https://placeholdit.com/#{height}x#{width}/dddddd/999999"
    end
end
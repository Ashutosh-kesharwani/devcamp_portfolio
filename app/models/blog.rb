class Blog < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged   # or use any other field like :name
end

class Skill < ApplicationRecord
  validates_presence_of :title, :percent_utilized , presence: true
end

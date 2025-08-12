class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates_presence_of :name
  def first_name
    self.name.split(' ').first # these are just normal method that brings 1st ele of array
  end
  #Better than using self.name.split[0] because it will run only if both present if only 1 ele present for last it show error hai its direct acess indexing
  def last_name
    self.name.split(' ').last  # these are just normal method that brings last ele of array
  end   
end

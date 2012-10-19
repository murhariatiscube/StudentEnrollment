class Sclass < ActiveRecord::Base
  # attr_accessible :title, :body
  
  set_primary_key :year
  
  has_many :students
  has_many :subjects
  has_many :class_teachers
  has_many :teachers, :through => :class_teachers
  
  attr_accessible :year
    
end

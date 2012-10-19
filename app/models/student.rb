class Student < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :clerk
  belongs_to :sclass
  has_many :subjects, :through => :student_subjects
  
  attr_accessible :student_id
  attr_accessible :year
  attr_accessible :clerk_id
  attr_accessible :sfname
  attr_accessible :slname
  attr_accessible :DOB
  attr_accessible :gender
  attr_accessible :mob
  attr_accessible :per
  attr_accessible :email
  attr_accessible :stream
  
end

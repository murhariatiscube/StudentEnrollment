class Teacher < ActiveRecord::Base
  # attr_accessible :title, :body
  
  has_many :class_teachers
  has_many :subject_teachers
  has_many :sclasses, :through => :class_teachers
  has_many :subjects, :through => :subject_teachers
  
  attr_accessible :teacher_id
  attr_accessible :tname
  attr_accessible :mob
  attr_accessible :email
    
end

class Subject < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :sclass
  has_many :subject_teachers
  has_many :lessons
  has_many :teachers, :through => :subject_teachers
  has_many :students, :through => :student_subjects
  
  attr_accessible :subject_id
  attr_accessible :sub_name
  attr_accessible :year
  
end

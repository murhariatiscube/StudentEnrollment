class StudentSubject < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :student
  belongs_to :subject
   
  attr_accessible :student_id
  attr_accessible :subject_id
    
end

class SubjectTeacher < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :teacher
  belongs_to :subject
  
  attr_accessible :teacher_id
  attr_accessible :subject_id
    
end

class ClassTeacher < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :sclass
  belongs_to :teacher
  
  attr_accessible :year
  attr_accessible :teacher_id
  attr_accessible :tname
  
  
end

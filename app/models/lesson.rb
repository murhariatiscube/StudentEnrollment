class Lesson < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :subject
  
  attr_accessible :subject_id, :no, :name, :content, :created_at, :updated_at
  
  scope :sorted, order('lessons.no ASC')
end
